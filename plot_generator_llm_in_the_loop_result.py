import os
import json
import matplotlib.pyplot as plt
import numpy as np
from matplotlib.ticker import ScalarFormatter, FuncFormatter
from scipy.stats import binned_statistic

#Stack first

o3_stack_json_dict_samples = []
o3_stack_dir = "result_output_o3-mini"

gpt4o_stack_json_dict_samples = []
gpt4o_stack_dir = "result_output_gpt_4_1"

#Get all json files in the directory
for file in os.listdir(o3_stack_dir):
    if file.endswith(".json"):
        with open(os.path.join(o3_stack_dir, file), "r") as f:
            data = json.load(f)
            o3_stack_json_dict_samples.append(data)
            print(data)

for file in os.listdir(gpt4o_stack_dir):
    if file.endswith(".json"):
        with open(os.path.join(gpt4o_stack_dir, file), "r") as f:
            data = json.load(f)
            gpt4o_stack_json_dict_samples.append(data)
            print(data)

o3_stack_step= [data["step"] for data in o3_stack_json_dict_samples  if data["reward"] != -1]
o3_stack_reward = [data["reward"] for data in o3_stack_json_dict_samples if data["reward"] != -1]
#o3_stack_values = [len(data["meta_dict"]["stack_values"]) if "meta_dict" in data else 0 for data in o3_stack_json_dict_samples  if data["reward"] != -1]


o3_stack_step_invalid= [data["step"] for data in o3_stack_json_dict_samples]
o3_stack_reward_invalid = [1 if data["reward"] == -1 else 0 for data in o3_stack_json_dict_samples]


#Sort by step
o3_stack_step, o3_stack_reward = zip(*sorted(zip(o3_stack_step, o3_stack_reward)))
o3_stack_step_invalid, o3_stack_reward_invalid = zip(*sorted(zip(o3_stack_step_invalid, o3_stack_reward_invalid)))


gpt4o_stack_step = [data["step"] for data in gpt4o_stack_json_dict_samples  if data["reward"] != -1]
gpt4o_stack_reward = [data["reward"] for data in gpt4o_stack_json_dict_samples if data["reward"] != -1]
#gpt4o_stack_values = [len(data["meta_dict"]["stack_values"]) if "meta_dict" in data else 0 for data in gpt4o_stack_json_dict_samples  if data["reward"] != -1]

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

#o3_stack_values_smooth_centers, o3_stack_values_smooth = downsample_irregular(o3_stack_step, o3_stack_values, window=window_size, stat='mean', drop_empty=True)

o4_stack_reward_smooth_centers ,o4_stack_reward_smooth = downsample_irregular(gpt4o_stack_step, gpt4o_stack_reward, window=window_size, stat='mean', drop_empty=True)
#o4_stack_values_smooth_centers, o4_stack_values_smooth = downsample_irregular(gpt4o_stack_step, gpt4o_stack_values, window=window_size, stat='mean', drop_empty=True)
o4_stack_reward_invalid_smooth_centers, o4_stack_reward_invalid_smooth = downsample_irregular(gpt4o_stack_step_invalid, gpt4o_stack_reward_invalid, window=window_size, stat='mean', drop_empty=True)


fig, ax = plt.subplots(figsize=(5, 2))

#ax.plot(o3_stack_values_smooth_centers, o3_stack_values_smooth, color='tab:grey', label="O3-m. #S. Values", marker='s')
#ax.plot(o4_stack_values_smooth_centers, o4_stack_values_smooth, color='tab:brown', linestyle='dashed', label="4o #S. Values", marker='p')

ax.plot(o4_stack_reward_smooth_centers, o4_stack_reward_smooth, label="4o #Errors", marker='v',color="tab:green")
ax.plot(o3_stack_reward_smooth_centers, o3_stack_reward_smooth, label="o3-m. #Errors", marker='^',color="tab:blue")

ax.plot(o4_stack_reward_invalid_smooth_centers, o4_stack_reward_invalid_smooth, color='tab:orange', label="4o #Inv.", marker='+')
ax.plot(o3_stack_reward_invalid_smooth_centers, o3_stack_reward_invalid_smooth, color='tab:red', label="o3-m. #Inv.", marker='x')


ax.set_xlabel("Step")
ax.set_xlim(0, 65_000)
ax.grid(True)
fig.tight_layout(rect=[0, 0.2, 1, 1])
class CustomScalarFormatter(ScalarFormatter):
    def _set_format(self):  # Customize the format method
        self.format = "%.1f"  # Ensure at least one decimal point
formatter = CustomScalarFormatter()
formatter.set_scientific(True)  # Enable scientific notation
plt.gca().xaxis.set_major_formatter(formatter)

# Force scientific notation
plt.gca().ticklabel_format(style='sci', axis='x', scilimits=(0, 0))

fig.legend(loc='upper center',
           bbox_to_anchor=(0.5,  0.3),   # y=0.05 is inside the free strip
           ncol=2, frameon=False)
#Save figure
fig.savefig("figures/llm_in_the_loop_result_comparison.pdf")
plt.show()

