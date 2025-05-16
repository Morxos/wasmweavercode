import torch
from sb3_contrib.ppo_mask import MultiInputPolicy


class CustomMaskablePolicy(MultiInputPolicy):
    def _build(self, lr_schedule) -> None:
        super()._build(lr_schedule)

        # --- split params: encoder vs heads -------------------------------
        enc_params, head_params = [], []
        for name, param in self.named_parameters():
            if "features_extractor" in name:
                enc_params.append(param)
            else:
                head_params.append(param)

        # --- custom two‑group AdamW --------------------------------------
        self.optimizer = torch.optim.AdamW(
            [
                {"params": enc_params, "lr": 1e-4},
                {"params": head_params, "lr": 3e-4},
            ],
            weight_decay=1e-4,
        )