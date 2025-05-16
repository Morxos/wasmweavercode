import json
import os
from typing import Literal

from experiments.eval.models.runpod_models import Phi4Reasoning1, Qwen31

experiment : Literal["stack","flags","result"] = "result"
#model = Llama3()
model = Qwen31()
#model = O4Mini()
#model = Phi4Reasoning1()
#model = Gpt41()

on_old_output = False
TEST_SAMPLES_COUNT = 500



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

error_json = []
error_count = []
error_value = []
error_type = []

def get_main_error_cause(message_list):
    error_set = set()
    for message in message_list:
        if message.startswith("error_json") or message.startswith("error_unknown") or message.startswith("error_labels"):
            error_set.add("error_structure")
        elif message.startswith("error_length"):
            error_set.add("error_length")
        elif message.startswith("error_value"):
            error_set.add("error_value")
        elif message.startswith("error_type"):
            error_set.add("error_type")
        elif message.startswith("error_flag"):
            error_set.add("error_flag")
        elif message.startswith("error"):
            raise Exception("Unknown error "+message)
    if not error_set:
        error_set.add("no_error")
    return error_set

error_causes = {}
total_files = 0

for file in os.listdir(directory+"_"+experiment+"_"+model.dir_name):
    print("Reading file",file)
    json_dict = json.loads(open(os.path.join(directory+"_"+experiment+"_"+model.dir_name,file)).read())
    result = json_dict.get("result")
    result_types = get_main_error_cause(result)
    for result_type in result_types:
        if result_type not in error_causes:
            error_causes[result_type] = 0
        error_causes[result_type] += 1
    total_files += 1

print("Error causes:")
print("Total files:", total_files)
print("Model:", model.dir_name)
for key in error_causes:
    percentage = error_causes[key]/total_files*100
    #Only use the first digit after the comma
    print(key, error_causes[key], "("+str(percentage.__round__(1))+"\\,\\%)")




