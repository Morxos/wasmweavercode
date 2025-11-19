# SPDX-License-Identifier: MIT
# SPDX-FileCopyrightText: 2025 Siemens AG

from stable_baselines3.common.callbacks import BaseCallback


class ProgressCallback(BaseCallback):
    """
    Callback for updating the environment with the current training progress.
    """
    def __init__(self, total_steps):
        super().__init__()
        self.total_steps = total_steps

    def _on_step(self) -> bool:
        if hasattr(self.training_env, "env_method"):
            self.training_env.env_method("set_progress", self.num_timesteps)
        return True


class SaveModelCallback(BaseCallback):
    """
    Callback for saving the model every 10,000 steps.
    """
    def __init__(self, save_path, verbose=0):
        super().__init__(verbose)
        self.save_path = save_path

    def _on_step(self) -> bool:
        if self.n_calls % 10000 == 0 and self.n_calls > 0:
            print(f"Saving model at step {self.n_calls}")
            self.model.save(self.save_path)
        return True