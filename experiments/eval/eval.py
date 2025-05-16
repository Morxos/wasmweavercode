import argparse
import json
import random
import shutil
import time
from typing import Literal
import os
from experiments.eval.judge import judge_wasm_result
from experiments.eval.models.openai_models import O4Mini, Gpt41
from experiments.eval.models.runpod_models import Llama3, Phi4Reasoning1, Phi4Reasoning2, \
    Phi4Reasoning3, Qwen31, Qwen32, Qwen33

experiment : Literal["stack","flags","result"] = "stack"

model = None
on_old_output = False
TEST_SAMPLES_COUNT = 500

def main():

    global experiment
    global model
    global on_old_output
    global TEST_SAMPLES_COUNT

    parser = argparse.ArgumentParser()

    parser.add_argument("--experiment", type=str, help="Experiment to run")
    parser.add_argument("--model", type=str, help="Model to use")
    parser.add_argument("--on_old_output", action="store_true",default=False, help="Use old output")
    parser.add_argument("--test_samples_count", type=int,default=500, help="Number of test samples to use when creating a fresh test directory")

    args = parser.parse_args()
    if args.experiment:
        #Check if experiment is valid
        if args.experiment not in ["stack", "flags", "result"]:
            print("Invalid experiment name")
            exit(1)
        experiment = args.experiment
    if args.model:
        #Check if model is valid
        if args.model == "Llama3":
            model = Llama3()
        elif args.model == "Qwen31":
            model = Qwen31()
        elif args.model == "Qwen32":
            model = Qwen32()
        elif args.model == "Qwen33":
            model = Qwen33()
        elif args.model == "Phi4Reasoning1":
            model = Phi4Reasoning1()
        elif args.model == "Phi4Reasoning2":
            model = Phi4Reasoning2()
        elif args.model == "Phi4Reasoning3":
            model = Phi4Reasoning3()
        elif args.model == "O4Mini":
            model = O4Mini()
        elif args.model == "Gpt41":
            model = Gpt41()
        else:
            print("Invalid model name")
            exit(1)

    if args.on_old_output:
        print("Using old output")
        on_old_output = args.on_old_output









    print("Experiment:", experiment)
    print("Model:", model.name)
    print("You have 5 seconds to cancel this script if you want to run it on a different model")
    time.sleep(5)
    print("Press Ctrl+C to cancel")




    if experiment == "stack":
        directory = "1_stack_effect_samples"
        test_samples_dir = "1_stack_effect_samples_test"
    elif experiment == "flags":
        directory = "2_reachability_samples"
        test_samples_dir = "2_reachability_samples_test"
    elif experiment == "result":
        directory = "3_result_estimation_samples"
        test_samples_dir = "3_result_estimation_samples_test"
    else:
        print("Invalid experiment name")
        exit(1)

    #Check if dir exists, abort otherwise
    if not os.path.exists(directory):
        print(f"Directory {directory} does not exist")
        exit(1)

    #Check if test dir exists, otherwise take random samples from the directory and save them to the test dir
    if not os.path.exists(test_samples_dir):
        print(f"Directory {test_samples_dir} does not exist, creating it")
        os.makedirs(test_samples_dir)
        #Take random samples from the directory and save them to the test dir
        files = os.listdir(directory)
        #Sample TEST_SAMPLES_COUNT files from the directory at random
        files = [f for f in files if f.endswith(".wat")]
        if len(files) > TEST_SAMPLES_COUNT:
            files = random.sample(files, TEST_SAMPLES_COUNT)
        for file in files:
            if file.endswith(".wat"):
                #Copy file to test dir. should be compatible with all OS
                shutil.copy(os.path.join(directory, file), test_samples_dir)
                #Copy meta file to test dir. should be compatible with all OS
                if os.path.exists(os.path.join(directory, file.replace(".wat", ".meta"))):
                    shutil.copy(os.path.join(directory, file.replace(".wat", ".meta")), test_samples_dir)


    #Create output directory if it does not exist
    if not os.path.exists(directory+"_"+experiment+"_"+model.dir_name):
        os.makedirs(directory+"_"+experiment+"_"+model.dir_name)
    i = 0
    for root, dirs, files in os.walk(test_samples_dir):
        for file in files:
            if file.endswith(".wat"):
                i+=1
                wat_file = os.path.join(root, file)
                meta_file = os.path.join(root, file.replace(".wat", ".meta"))
                print(f"Running {experiment} on {file}")
                #Check if meta file exists
                if not os.path.exists(meta_file):
                    print(f"Meta file {meta_file} does not exist")
                    continue
                #Check if wat file exists
                if not os.path.exists(wat_file):
                    print(f"WAT file {wat_file} does not exist")
                    continue

                if not on_old_output and os.path.exists(os.path.join(directory+"_"+experiment+"_"+model.dir_name, file.replace(".wat", ".json"))):
                    print(f"Output file {os.path.join(directory+'_'+experiment+'_'+model.dir_name, file.replace('.wat', '.json'))} already exists")
                    continue

                #Check if output file exists
                if on_old_output and not os.path.exists(os.path.join(directory+"_"+experiment+"_"+model.dir_name, file.replace(".wat", ".json"))):
                    print(f"Output file {os.path.join(directory+'_'+experiment+'_'+model.dir_name, file.replace('.wat', '.json'))} not found!")
                    continue

                if on_old_output:
                    #Load model raw output into model
                    with open(os.path.join(directory+"_"+experiment+"_"+model.dir_name, file.replace(".wat", ".json")), "r") as f:
                        model_output = json.load(f)["raw_output"]
                        print("Model output loaded", model_output)
                result, raw_output = judge_wasm_result(meta_file_path=meta_file, wat_file_path=wat_file, model=model_output if on_old_output else model, target=experiment)
                #Write result to file
                with open(os.path.join(directory+"_"+experiment+"_"+model.dir_name, file.replace(".wat", ".json")), "w") as f:
                    #Create json object
                    json_obj = {
                        "file": file,
                        "result": result,
                        "raw_output": raw_output
                    }
                    #Write json object to file
                    f.write(json.dumps(json_obj, indent=4))


if __name__ == "__main__":
    main()




