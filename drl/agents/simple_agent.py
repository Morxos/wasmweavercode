#A simple random agent to show how to interact with the environment
import random

import gymnasium as gym
import torch
from sb3_contrib import MaskablePPO
from sb3_contrib.ppo_mask import MultiInputPolicy
from stable_baselines3 import PPO
from torch.optim import AdamW

from core.environment import WasmWeaverEnv
from core.constraints import ByteCodeSizeConstraint, FuelConstraint
from core.processor import StackInspectorPostProcessor, FlagReachabilityPostProcessor
from core.value import I32, F32, F64, I64
from drl.extractor import SimpleFeatureExtractor
from drl.rewards import PartialRewardCallback, SimpleRewardFunction

random.seed(0)

def main():
    gym.register(
        id="gymnasium_env/WasmWeaverEnv-v0",
        entry_point=WasmWeaverEnv,
    )

    class MyPolicy(MultiInputPolicy):
        def _make_optimizer(self):
            enc_params, other_params = [], []
            for name, p in self.named_parameters():
                (enc_params if "features_extractor" in name else other_params).append(p)

            self.optimizer = AdamW([
                {"params": enc_params, "lr": 3e-4},  # SequenceEncoders
                {"params": other_params, "lr": 3e-4},  # rest of policy
            ])
    available_types = [
        I32,
        I64,
        F32,
        F64
    ]
    #Generate all combinations of 1 and 2 types
    output_mutations_one_type = [
        [t] for t in available_types
    ]

    output_mutations_two_types = [[available_types[i], available_types[j]] for i in range(len(available_types)) for j in range(i + 1, len(available_types))]

    output_mutations_three_types = [

            [available_types[i], available_types[j], available_types[k]] for i in range(len(available_types)) for j in range(i + 1, len(available_types)) for k in range(j + 1, len(available_types))

    ]

    output_mutations = output_mutations_one_type + output_mutations_two_types + output_mutations_three_types


    experiment_name = "experiment_1"

    env = gym.make("gymnasium_env/WasmWeaverEnv-v0",
                   constraints=[ByteCodeSizeConstraint(0, 100), FuelConstraint(10, 100)],
                   output_types=output_mutations, post_processor_types=[StackInspectorPostProcessor,FlagReachabilityPostProcessor],
                   forbidden_instruction_name_tokens=["load","store","condition","loop","block","function"],
                   reward_function=SimpleRewardFunction(f"{experiment_name}_samples",flag_reward=True),
                   verbose=True)


    policy_kwargs = dict(
        features_extractor_class = SimpleFeatureExtractor
    )

    model = MaskablePPO(MyPolicy,
                env,
                policy_kwargs=policy_kwargs,
                verbose=0,
                tensorboard_log="./wasmweaver_tensorboard/",
                device="cuda"
                )
    try:
        model.learn(total_timesteps=10_000_000,callback=[PartialRewardCallback()])
    except Exception as e:
        model.save("ppo_wasmweaver")
        raise e

    model.save("ppo_wasmweaver")


if __name__ == '__main__':
    #print(torch.cuda.is_available())
    main()
