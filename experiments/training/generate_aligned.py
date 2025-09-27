import gymnasium as gym
import numpy as np
import sb3_contrib
from sb3_contrib import MaskablePPO

from core.constraints import ByteCodeSizeConstraint, FuelConstraint
from core.environment import WasmWeaverEnv
from drl.extractor import SimpleFeatureExtractor
from drl.rewards import SimpleRewardFunction
from experiments.training.policy import CustomMaskablePolicy

print("sb3_contrib version:", sb3_contrib.__version__)

experiment_name = "4_alignment"

gym.register(
        id="gymnasium_env/WasmWeaverEnv-v0",
        entry_point=WasmWeaverEnv,
    )

reward_function = SimpleRewardFunction(f"{experiment_name}_samples",flag_reward=False, depth_reward=True, alignment_only=True)


env = gym.make("gymnasium_env/WasmWeaverEnv-v0",
                   constraints=[ByteCodeSizeConstraint(0, 1000), FuelConstraint(0, 50)],
                   output_types=[[]], post_processor_types=[],
                   forbidden_instruction_name_tokens=["block","loop","function","condition"],
                   reward_function=reward_function,
                   verbose=True)

policy_kwargs = dict(
        features_extractor_class = SimpleFeatureExtractor,
        net_arch=dict(pi=[512, 256], vf=[512, 256]),
    )

model = MaskablePPO(CustomMaskablePolicy,
                env,
                ent_coef=1e-3,
                policy_kwargs=policy_kwargs,
                verbose=1,
                gamma=1.0,
                tensorboard_log=f"{experiment_name}_tensorboard/",
                device="cpu"
                )

model.set_parameters(f"{experiment_name}_ppo_wasmweaver.zip")



#model = MaskablePPO.load(f"{experiment_name}_ppo_wasmweaver")

# Create and wrap the environment


# Initialize variables
obs, info = env.reset()
target_sample_count = 100
step_count = 0
episode_rewards = []
episode_lengths = []
current_reward = 0
current_length = 0

random_action_probability = 0.00  # Probability of taking a random action

while len(reward_function.buffer.buffer) < target_sample_count:
    action_masks = np.asarray(env.unwrapped.action_masks(), dtype=bool)
    print(len(action_masks))
    assert any(action_masks), "all actions masked – policy is stuck"
    action, _ = model.predict(obs, action_masks=action_masks,deterministic=False)
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