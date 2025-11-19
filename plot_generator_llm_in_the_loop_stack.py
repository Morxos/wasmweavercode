import os
import json
import matplotlib.pyplot as plt
import numpy as np
from matplotlib.ticker import ScalarFormatter, FormatStrFormatter, FuncFormatter
from scipy.stats import binned_statistic

#Stack first

o3_stack_json_dict_samples = []
o3_stack_dir = "stack_output_o3-mini"

gpt4o_stack_json_dict_samples = []
gpt4o_stack_dir = "stack_output_gpt_4_1"

o3_top_10_instructions = {}

o4_top_10_instructions = {}


#Get all json files in the directory
for file in os.listdir(o3_stack_dir):
    if file.endswith(".json"):
        with open(os.path.join(o3_stack_dir, file), "r") as f:
            print("Loading " + file)
            data = json.load(f)
            if "trace" in data:
                seen_instructions = {}
                trace = data["trace"]
                step = data["step"]
                for instruction in trace:
                    real_instr = instruction.split("_")[1]
                    seen_instructions[real_instr] = seen_instructions.get(real_instr, 0) + 0.5

                o3_top_10_instructions[step] = seen_instructions

            o3_stack_json_dict_samples.append(data)
            print(data)

for file in os.listdir(gpt4o_stack_dir):
    if file.endswith(".json"):
        with open(os.path.join(gpt4o_stack_dir, file), "r") as f:
            data = json.load(f)

            if "trace" in data:
                seen_instructions = {}
                trace = data["trace"]
                step = data["step"]
                for instruction in trace:
                    real_instr = instruction.split("_")[1]
                    seen_instructions[real_instr] = seen_instructions.get(real_instr, 0) + 0.5

                o4_top_10_instructions[step] = seen_instructions

            gpt4o_stack_json_dict_samples.append(data)
            print(data)

o3_stack_step= [data["step"] for data in o3_stack_json_dict_samples  if data["reward"] != -1]
o3_stack_reward = [data["reward"] for data in o3_stack_json_dict_samples if data["reward"] != -1]
o3_stack_values = [len(data["meta_dict"]["stack_values"]) if "meta_dict" in data else 0 for data in o3_stack_json_dict_samples  if data["reward"] != -1]


o3_stack_step_invalid= [data["step"] for data in o3_stack_json_dict_samples]
o3_stack_reward_invalid = [1 if data["reward"] == -1 else 0 for data in o3_stack_json_dict_samples]


#Sort by step
o3_stack_step, o3_stack_reward = zip(*sorted(zip(o3_stack_step, o3_stack_reward)))
o3_stack_step_invalid, o3_stack_reward_invalid, o3_stack_values = zip(*sorted(zip(o3_stack_step_invalid, o3_stack_reward_invalid,o3_stack_values)))


gpt4o_stack_step = [data["step"] for data in gpt4o_stack_json_dict_samples  if data["reward"] != -1]
gpt4o_stack_reward = [data["reward"] for data in gpt4o_stack_json_dict_samples if data["reward"] != -1]
gpt4o_stack_values = [len(data["meta_dict"]["stack_values"]) if "meta_dict" in data else 0 for data in gpt4o_stack_json_dict_samples  if data["reward"] != -1]

gpt4o_stack_step_invalid = [data["step"] for data in gpt4o_stack_json_dict_samples]
gpt4o_stack_reward_invalid = [1 if data["reward"] == -1 else 0 for data in gpt4o_stack_json_dict_samples]

def downsample_irregular(x, y, window=100, stat='mean', drop_empty=True):
    """
    Aggregate irregularly-sampled (x, y) pairs into fixed-width windows.

    Parameters
    ----------
    x, y : 1-D arrays of equal length
    window : float
        Width of each bin along the x-axis.
    stat : str or callable
        'mean', 'median', 'max', 'min', 'std', or a custom function.
    drop_empty : bool
        If True, bins that receive no samples are removed from the output.
        If False, their y value is NaN.

    Returns
    -------
    x_centres : 1-D array
        Centre coordinate of each bin.
    y_stat    : 1-D array
        Aggregated y value per bin (same length as x_centres).
    """
    x = np.asarray(x)
    y = np.asarray(y)

    # 1) Create equally spaced bin edges that cover the whole x-range
    start = np.floor(x.min() / window) * window
    end   = np.ceil( x.max() / window) * window
    edges = np.arange(start, end + window, window)

    # 2) Compute the requested statistic per bin
    y_stat, _, _ = binned_statistic(x, y, statistic=stat, bins=edges)

    # 3) Choose an x representative: here the bin centre
    centres = (edges[:-1] + edges[1:]) / 2

    if drop_empty:
        mask = ~np.isnan(y_stat)
        centres, y_stat = centres[mask], y_stat[mask]

    return centres, y_stat

#Create sliding window average for o3_stack_reward
window_size = 5000
o3_stack_reward_smooth_centers ,o3_stack_reward_smooth = downsample_irregular(o3_stack_step, o3_stack_reward, window=window_size, stat='mean', drop_empty=True)

o3_stack_reward_invalid_smooth_centers, o3_stack_reward_invalid_smooth = downsample_irregular(o3_stack_step_invalid, o3_stack_reward_invalid, window=window_size, stat='mean', drop_empty=True)

o3_stack_values_smooth_centers, o3_stack_values_smooth = downsample_irregular(o3_stack_step, o3_stack_values, window=window_size, stat='mean', drop_empty=True)

o4_stack_reward_smooth_centers ,o4_stack_reward_smooth = downsample_irregular(gpt4o_stack_step, gpt4o_stack_reward, window=window_size, stat='mean', drop_empty=True)
o4_stack_values_smooth_centers, o4_stack_values_smooth = downsample_irregular(gpt4o_stack_step, gpt4o_stack_values, window=window_size, stat='mean', drop_empty=True)
o4_stack_reward_invalid_smooth_centers, o4_stack_reward_invalid_smooth = downsample_irregular(gpt4o_stack_step_invalid, gpt4o_stack_reward_invalid, window=window_size, stat='mean', drop_empty=True)


fig, ax = plt.subplots(figsize=(6, 2))

ax.plot(o3_stack_values_smooth_centers, o3_stack_values_smooth, color='tab:grey', label="# Values (gpt-4o)", marker='s')
ax.plot(o4_stack_values_smooth_centers, o4_stack_values_smooth, color='tab:brown', label="# Values (o3-m.)", marker='p')

ax.plot(o4_stack_reward_smooth_centers, o4_stack_reward_smooth, label="# Errors (gpt-4o)", marker='v',color="tab:green")
ax.plot(o3_stack_reward_smooth_centers, o3_stack_reward_smooth, label="# Errors (o3-m.)", marker='^',color="tab:blue")

ax.plot(o4_stack_reward_invalid_smooth_centers, o4_stack_reward_invalid_smooth, color='tab:orange', label="# Inv. (gpt-4o)", marker='+')
ax.plot(o3_stack_reward_invalid_smooth_centers, o3_stack_reward_invalid_smooth, color='tab:red', label="# Inv. (o3-m.)", marker='x')

class CustomScalarFormatter(ScalarFormatter):
    def _set_format(self):  # Customize the format method
        self.format = "%.1f"  # Ensure at least one decimal point
formatter = CustomScalarFormatter()
formatter.set_scientific(True)  # Enable scientific notation
plt.gca().xaxis.set_major_formatter(formatter)

# Force scientific notation
plt.gca().ticklabel_format(style='sci', axis='x', scilimits=(0, 0))
ax.set_xlabel("Step")
ax.set_xlim(0, 70_000)
ax.grid(True)
fig.tight_layout(rect=[0, 0.2, 1, 1])

fig.legend(loc='upper center',
           bbox_to_anchor=(0.5,  0.3),   # y=0.05 is inside the free strip
           ncol=3, frameon=False)
#Save figure
fig.savefig("figures/llm_in_the_loop_stack_comparison.pdf")
plt.show()

top_10_instructions_first_100_o3 = {}
top_10_instructions_last_100_o3 = {}

top_10_instructions_first_100_o4 = {}
top_10_instructions_last_100_o4 = {}

o3_top_10_instructions = sorted(o3_top_10_instructions.items())
o4_top_10_instructions = sorted(o4_top_10_instructions.items())
print(o3_top_10_instructions)
o3_top_10_instructions = [x[1] for x in o3_top_10_instructions]
o4_top_10_instructions = [x[1] for x in o4_top_10_instructions]

for i in range(10):
    instructions = o3_top_10_instructions[i]
    for instruction in instructions:
        if instruction not in top_10_instructions_first_100_o3:
            top_10_instructions_first_100_o3[instruction] = instructions[instruction]
        else:
            top_10_instructions_first_100_o3[instruction] += instructions[instruction]

    instructions = o4_top_10_instructions[i]
    for instruction in instructions:
        if instruction not in top_10_instructions_first_100_o4:
            top_10_instructions_first_100_o4[instruction] = instructions[instruction]
        else:
            top_10_instructions_first_100_o4[instruction] += instructions[instruction]

    #Now last
    instructions = o3_top_10_instructions[-i]
    for instruction in instructions:
        if instruction not in top_10_instructions_last_100_o3:
            top_10_instructions_last_100_o3[instruction] = instructions[instruction]
        else:
            top_10_instructions_last_100_o3[instruction] += instructions[instruction]

    instructions = o4_top_10_instructions[-i]
    for instruction in instructions:
        if instruction not in top_10_instructions_last_100_o4:
            top_10_instructions_last_100_o4[instruction] = instructions[instruction]
        else:
            top_10_instructions_last_100_o4[instruction] += instructions[instruction]

print("o3")
start_o3 = sorted(top_10_instructions_first_100_o3.items(),key=lambda x: x[1],reverse=True)
end_o3 = sorted(top_10_instructions_last_100_o3.items(), key=lambda x: x[1],reverse=True)
print("4o")
start_o4 = sorted(top_10_instructions_first_100_o4.items(), key=lambda x: x[1],reverse=True)
end_o4 = sorted(top_10_instructions_last_100_o4.items(), key=lambda x: x[1],reverse=True)
total_count_o4_end = sum([x[1] for x in end_o4])
total_count_o4_start = sum([x[1] for x in start_o4])
total_count_o3_end = sum([x[1] for x in end_o3])
total_count_o3_start = sum([x[1] for x in start_o3])

start_o3 = [(x[0],x[1]/total_count_o3_start) for x in start_o3]
start_o4 = [(x[0],x[1]/total_count_o4_start) for x in start_o4]



end_o3 = [(x[0],x[1]/total_count_o3_end) for x in end_o3]
end_o4 = [(x[0],x[1]/total_count_o4_end) for x in end_o4]

start_o3_other_percentage = sum([x[1] for x in start_o3[5:]])
end_o3_other_percentage = sum([x[1] for x in end_o3[5:]])

start_o4_other_percentage = sum([x[1] for x in start_o4[5:]])
end_o4_other_percentage = sum([x[1] for x in end_o4[5:]])

print("o3")
print(start_o3[:5])
print("o3 other start:",start_o3_other_percentage)
print(end_o3[:5])
print("o3 other end:",end_o3_other_percentage)
print("o4")
print(start_o4[:5])
print("o4 other start:",start_o4_other_percentage)
print(end_o4[:5])
print("o4 other end:",end_o4_other_percentage)
