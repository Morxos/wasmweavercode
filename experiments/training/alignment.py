#A simple random agent to show how to interact with the environment
import random
import gymnasium as gym
from sb3_contrib import MaskablePPO
from sb3_contrib.ppo_mask import MultiInputPolicy
from stable_baselines3.common.callbacks import BaseCallback
from torch.optim import AdamW
import torch

from core.environment import WasmWeaverEnv
from core.constraints import ByteCodeSizeConstraint, FuelConstraint
from core.processor import StackInspectorPostProcessor, FlagReachabilityPostProcessor
from core.value import F64, F32, I64, I32
from drl.extractor import SimpleFeatureExtractor
from drl.rewards import PartialRewardCallback, SimpleRewardFunction
from experiments.training.callbacks import ProgressCallback, SaveModelCallback
from experiments.training.policy import CustomMaskablePolicy

random.seed(0)
TOTAL_TIME_STEPS = 10_000_000

def main():
    gym.register(
        id="gymnasium_env/WasmWeaverEnv-v0",
        entry_point=WasmWeaverEnv,
    )


    #one_value = [[I32],[I64],[F32],[F64]]#*4 # To make all classes equal size
    #two_value = [[I32,I32],[I32,I64],[I32,F32],[I32,F64],
    #             [I64,I32],[I64,I64],[I64,F32],[I64,F64],
    #             [F32,I32],[F32,I64],[F32,F32],[F32,F64],
    #             [F64,I32],[F64,I64],[F64,F32],[F64,F64]]

    #all_output_classes = one_value #+ two_value

    experiment_name = "4_alignment"

    env = gym.make("gymnasium_env/WasmWeaverEnv-v0",
                   constraints=[ByteCodeSizeConstraint(0, 1000), FuelConstraint(0, 100)],
                   output_types=[[]], post_processor_types=[],
                   forbidden_instruction_name_tokens=[],
                   reward_function=SimpleRewardFunction(f"{experiment_name}_samples",flag_reward=False, depth_reward=False,alignment_only=True),
                   verbose=True)


    policy_kwargs = dict(
        features_extractor_class = SimpleFeatureExtractor,
        net_arch=dict(pi=[512, 256], vf=[512, 256])
    )

    model = MaskablePPO(CustomMaskablePolicy,
                env,
                ent_coef=1e-3,
                policy_kwargs=policy_kwargs,
                verbose=1,
                gamma=1.0,
                tensorboard_log=f"{experiment_name}_tensorboard/",
                device="cuda"
                )

    try:
        load_model = input("Do you want to load a model? (y/n): ")
        if load_model.lower() == 'y':
            model.set_parameters(f"{experiment_name}_ppo_wasmweaver")
    except Exception as e:
        print(f"Error loading model: {e}")
        print("Starting training from scratch.")

    try:
        model.learn(total_timesteps=TOTAL_TIME_STEPS,callback=[PartialRewardCallback(), ProgressCallback(TOTAL_TIME_STEPS), SaveModelCallback(f"{experiment_name}_ppo_wasmweaver")])
    except Exception as e:
        model.save(f"{experiment_name}_ppo_wasmweaver")
        raise e

    model.save(f"{experiment_name}_ppo_wasmweaver")


if __name__ == '__main__':
    main()
