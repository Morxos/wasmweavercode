# SPDX-License-Identifier: MIT
# SPDX-FileCopyrightText: 2025 Siemens AG

import random
import gymnasium as gym
from sb3_contrib import MaskablePPO
from core.environment import WasmWeaverEnv
from core.constraints import ByteCodeSizeConstraint, FuelConstraint
from core.processor import StackInspectorPostProcessor
from drl.extractor import SimpleFeatureExtractor
from drl.rewards import PartialRewardCallback, SimpleRewardFunction
from experiments.eval.models.openai_models import O3Mini
from experiments.training.callbacks import ProgressCallback, SaveModelCallback
from experiments.training.policy import CustomMaskablePolicy

random.seed(0)
TOTAL_TIME_STEPS = 500_000
EXPERIMENT_NAME = "STACK_EFFECT_EXPERIMENT"

def main():
    gym.register(
        id="gymnasium_env/WasmWeaverEnv-v0",
        entry_point=WasmWeaverEnv,
    )


    env = gym.make("gymnasium_env/WasmWeaverEnv-v0",
                   constraints=[ByteCodeSizeConstraint(0, 1000), FuelConstraint(0, 50)],
                   output_types=[[]], post_processor_types=[StackInspectorPostProcessor],
                   forbidden_instruction_name_tokens=["load","store","condition","loop","block","function","br","br_if", "br_table","return"],
                   reward_function=SimpleRewardFunction(f"{EXPERIMENT_NAME}_samples",stack_reward=True, flag_reward=False, model=O3Mini()),
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
                        tensorboard_log=f"{EXPERIMENT_NAME}_tensorboard/",
                        device="mps"
                        )

    # Load the model if it exists after asking the user
    try:
        load_model = input("Do you want to load a model? (y/n): ")
        if load_model.lower() == 'y':
            model=model.load(f"{EXPERIMENT_NAME}_ppo_wasmweaver")
    except Exception as e:
        print(f"Error loading model: {e}")
        print("Starting training from scratch.")

    model.learn(total_timesteps=TOTAL_TIME_STEPS,callback=[PartialRewardCallback(), ProgressCallback(TOTAL_TIME_STEPS), SaveModelCallback(f"{EXPERIMENT_NAME}_ppo_wasmweaver")])

    model.save(f"{EXPERIMENT_NAME}_ppo_wasmweaver")


if __name__ == '__main__':
    main()
