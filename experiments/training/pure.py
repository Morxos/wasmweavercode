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
from drl.extractor import SimpleFeatureExtractor
from drl.rewards import PartialRewardCallback, SimpleRewardFunction
from experiments.eval.models.openai_models import Gpt41
from experiments.training.callbacks import ProgressCallback, SaveModelCallback
from experiments.training.policy import CustomMaskablePolicy

random.seed(0)

TOTAL_TIME_STEPS = 10_000_000

def main():
    gym.register(
        id="gymnasium_env/WasmWeaverEnv-v0",
        entry_point=WasmWeaverEnv,
    )

    experiment_name = "5_pure"

    env = gym.make("gymnasium_env/WasmWeaverEnv-v0",
                   constraints=[ByteCodeSizeConstraint(10, 500), FuelConstraint(10, 50)],
                   output_types=[[]], post_processor_types=[],
                   forbidden_instruction_name_tokens=[],
                   reward_function=SimpleRewardFunction(f"{experiment_name}_samples",stack_reward=False, flag_reward=False, result_reward=False, model=None),
                   verbose=True)


    policy_kwargs = dict(
        features_extractor_class = SimpleFeatureExtractor,
        net_arch=dict(pi=[512, 256], vf=[512, 256])
    )

    model = MaskablePPO(CustomMaskablePolicy,
                        env,
                        ent_coef=0.01,
                        policy_kwargs=policy_kwargs,
                        verbose=1,
                        gamma=1.0,
                        tensorboard_log=f"{experiment_name}_tensorboard/",
                        device="mps"
                        )
    # Load the model if it exists
    try:
        load_model = input("Do you want to load a model? (y/n): ")
        if load_model.lower() == 'y':
            model.set_parameters(f"{experiment_name}_ppo_wasmweaver")
    except Exception as e:
        print(f"Error loading model: {e}")
        print("Starting training from scratch.")

    model.learn(total_timesteps=TOTAL_TIME_STEPS,callback=[PartialRewardCallback(), ProgressCallback(TOTAL_TIME_STEPS), SaveModelCallback(f"{experiment_name}_ppo_wasmweaver")])
    model.save(f"{experiment_name}_ppo_wasmweaver")


if __name__ == '__main__':
    main()
