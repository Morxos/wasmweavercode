from stable_baselines3.common.callbacks import BaseCallback


class ProgressCallback(BaseCallback):
    def __init__(self, total_steps):
        super().__init__()
        self.total_steps = total_steps

    def _on_step(self) -> bool:
        frac = self.num_timesteps / self.total_steps  # 0 … 1
        # send the fraction into the env so it can schedule rewards
        if hasattr(self.training_env, "env_method"):
            self.training_env.env_method("set_progress", frac)
        return True


class SaveModelCallback(BaseCallback):
    def __init__(self, save_path, verbose=0):
        super().__init__(verbose)
        self.save_path = save_path

    def _on_step(self) -> bool:
        if self.n_calls % 10000 == 0 and self.n_calls > 0:
            print(f"Saving model at step {self.n_calls}")
            self.model.save(self.save_path)
        return True