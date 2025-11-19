# SPDX-License-Identifier: MIT
# SPDX-FileCopyrightText: 2025 Siemens AG

import random
import gymnasium as gym
from sb3_contrib import MaskablePPO
from sb3_contrib.ppo_mask import MultiInputPolicy
from torch.optim import AdamW
from core.environment import WasmWeaverEnv
from core.constraints import ByteCodeSizeConstraint, FuelConstraint
from drl.extractor import SimpleFeatureExtractor
from drl.rewards import PartialRewardCallback, SimpleRewardFunction

random.seed(0)

def main():

    EXPERIMENT_NAME = "simple_agent_experiment"

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



    env = gym.make("gymnasium_env/WasmWeaverEnv-v0",
                   constraints=[ByteCodeSizeConstraint(0, 100), FuelConstraint(10, 100)],
                   output_types=[[]],
                   post_processor_types=[],
                   forbidden_instruction_name_tokens=["load","store","condition","loop","block","function"],
                   reward_function=SimpleRewardFunction(f"{EXPERIMENT_NAME}_samples",stack_reward=False,flag_reward=False,model=None),
                   curriculum=None,
                   verbose=True)


    policy_kwargs = dict(
        features_extractor_class = SimpleFeatureExtractor
    )

    model = MaskablePPO(MyPolicy,
                env,
                policy_kwargs=policy_kwargs,
                verbose=0,
                tensorboard_log="./wasmweaver_tensorboard"+EXPERIMENT_NAME+"/",
                device="cuda"
                )
    try:
        model.learn(total_timesteps=10_000_000,callback=[PartialRewardCallback()])
    except Exception as e:
        raise e
    finally:
        model.save(EXPERIMENT_NAME+"_final_model")


if __name__ == '__main__':
    main()
