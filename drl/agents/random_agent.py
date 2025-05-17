#A simple random agent to show how to interact with the environment
import random

import gymnasium as gym
from core.environment import WasmWeaverEnv
from core.constraints import ByteCodeSizeConstraint, FuelConstraint

def main():
    gym.register(
        id="gymnasium_env/WasmWeaverEnv-v0",
        entry_point=WasmWeaverEnv,
    )

    env = gym.make("gymnasium_env/WasmWeaverEnv-v0",
                   constraints=[ByteCodeSizeConstraint(0, 512), FuelConstraint(10, 5000)])
    print("Environment created")
    for epoch in range(1000):
        done = False
        env.reset()
        while not done:
            action_masks = env.unwrapped.action_masks()
            random_mask = [i for i, mask in enumerate(action_masks) if mask == 1]
            action = random.choice(random_mask)
            obs, reward, done, truncated, info = env.step(action)
            if done:
                print(f"Epoch: {epoch}, Action: {action}, Obs: {obs}, Reward: {reward}, Done: {done}")
                print("Done!")
                break


if __name__ == '__main__':
    main()
