import json
import os

from contourpy.util import data

source = "3_result_estimation_samples"
output = "dataset_3/data.jsonl"

output_list = []


for file in os.listdir(source):
    if file.endswith(".meta"):
        with open(os.path.join(source, file), 'r') as f:
            data = json.load(f)
        flag_states = data["flag_states"]
        return_values = data["return_values"]
        stack_values = data["stack_values"]
        # Load wat file
        wat_file = os.path.join(source, file.replace(".meta", ".wat"))
        with open(wat_file, 'r') as f:
            wat_code = f.read()

        output_dict = {
            "flag_states": flag_states,
            "return_values": return_values,
            "stack_values": stack_values,
            "code": wat_code
        }

        output_list.append(output_dict)
        print(f"Processed {file} ({len(output_list)})")


# Save output list to json file
with open(output, 'w') as f:
    json.dump(output_list, f)