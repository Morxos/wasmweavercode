import gymnasium as gym
from sb3_contrib import MaskablePPO
from core.constraints import ByteCodeSizeConstraint, FuelConstraint
from core.environment import WasmWeaverEnv
from core.processor import StackInspectorPostProcessor
from drl.extractor import SimpleFeatureExtractor
from drl.rewards import SimpleRewardFunction

experiment_name = "1_stack_effect"

gym.register(
        id="gymnasium_env/WasmWeaverEnv-v0",
        entry_point=WasmWeaverEnv,
    )

reward_function = SimpleRewardFunction(f"{experiment_name}_samples",target_trace_length=30)


env = gym.make("gymnasium_env/WasmWeaverEnv-v0",
                   constraints=[ByteCodeSizeConstraint(0, 1000), FuelConstraint(0, 50)],
                   output_types=[[]], post_processor_types=[StackInspectorPostProcessor],
                   forbidden_instruction_name_tokens=["load","store","condition","loop","block","function","br","br_if", "br_table","return"],
                   reward_function=reward_function,
                   verbose=True)

policy_kwargs = dict(
        features_extractor_class = SimpleFeatureExtractor,
        net_arch=dict(pi=[512, 256], vf=[512, 256]),
    )

model = MaskablePPO.load(f"{experiment_name}_ppo_wasmweaver")

# Create and wrap the environment


# Initialize variables
obs, info = env.reset()
target_sample_count = 10_000
step_count = 0
episode_rewards = []
episode_lengths = []
current_reward = 0
current_length = 0

while len(reward_function.buffer.buffer) < target_sample_count:
    action_masks = env.unwrapped.action_masks()
    action, _ = model.predict(obs, action_masks=action_masks)
    obs, reward, done, truncated, info = env.step(action)
    step_count += 1
    current_reward += reward
    current_length += 1

    if done:
        print("Current sample count:", len(reward_function.buffer.buffer))
        episode_rewards.append(current_reward)
        episode_lengths.append(current_length)
        current_reward = 0
        current_length = 0
        obs, info = env.reset()

# After evaluation
mean_reward = sum(episode_rewards) / len(episode_rewards)
print(f"Mean reward over {len(episode_rewards)} episodes: {mean_reward}")

# Save the buffer to a file
reward_function.buffer.flush(reward_function.buffer.out_dir)