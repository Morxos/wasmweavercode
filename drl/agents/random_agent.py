# SPDX-License-Identifier: MIT
# SPDX-FileCopyrightText: 2025 Siemens AG

import random
import time
import gymnasium as gym
from core.environment import WasmWeaverEnv
from core.constraints import ByteCodeSizeConstraint, FuelConstraint

successful_programs = 0
failed_programs = 0
generation_times_valid = []
generation_times_invalid = []

def main():
    gym.register(
        id="gymnasium_env/WasmWeaverEnv-v0",
        entry_point=WasmWeaverEnv,
    )

    env = gym.make("gymnasium_env/WasmWeaverEnv-v0",
                   constraints=[ByteCodeSizeConstraint(0, 512), FuelConstraint(0, 5000)],
                   verbose=True)
    for epoch in range(1000):
        start_time = time.time()
        done = False
        env.reset()
        while not done:
            action_masks = env.unwrapped.action_masks()
            random_mask = [i for i, mask in enumerate(action_masks) if mask == 1]
            action = random.choice(random_mask)
            obs, reward, done, truncated, info = env.step(action)
            if done:
                print("Done!", "Reward:", reward, "Info:", info)
                if reward > 0:
                    global successful_programs
                    successful_programs += 1
                    generation_times_valid.append(time.time() - start_time)
                else:
                    global failed_programs
                    failed_programs += 1
                    generation_times_invalid.append(time.time() - start_time)
                print("Successful programs:", successful_programs, "Failed programs:", failed_programs,
                      "Avg valid time:", sum(generation_times_valid)/len(generation_times_valid) if generation_times_valid else 0,
                      "Avg invalid time:", sum(generation_times_invalid)/len(generation_times_invalid) if generation_times_invalid else 0)



if __name__ == '__main__':
    main()
