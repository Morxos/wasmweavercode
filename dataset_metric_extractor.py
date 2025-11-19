import json
import os

import numpy as np

o3_stack_dir = "other_output_500"

total_lengths = []
target_lengths = []
absolute_errors = []

length_reward = []
module_reward = []


for file in os.listdir(o3_stack_dir):
    if file.endswith(".json"):
        with open(os.path.join(o3_stack_dir, file), "r") as f:
            data = json.load(f)
            if data["reward"] == -1:
                continue
            length_reward.append(data["length_reward"])
            module_reward.append(data["module_reward"])
            total_lengths.append(data["used_fuel"])
            target_lengths.append(data["target_fuel"])
            absolute_errors.append(abs(data["target_fuel"]-data["used_fuel"]))

print("Mean length_reward",np.mean(length_reward))
print("Mean module_reward",np.mean(module_reward))
print("MAE Fuel:",np.mean(absolute_errors))
print("Mean target fuel",np.mean(target_lengths))
print("Mean actual fuel",np.mean(total_lengths))
print("Min actual fuel",np.min(total_lengths))
print("Max actual fuel",np.max(total_lengths))


