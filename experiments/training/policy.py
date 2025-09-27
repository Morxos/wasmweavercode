import torch
from sb3_contrib.common.maskable.policies import MaskableMultiInputActorCriticPolicy
from sb3_contrib.ppo_mask import MultiInputPolicy


class CustomMaskablePolicy(MaskableMultiInputActorCriticPolicy):
    def _build(self, lr_schedule) -> None:
        super()._build(lr_schedule)

        # split params: encoder vs heads
        enc_params, head_params = [], []
        for name, param in self.named_parameters():
            if "features_extractor" in name:
                enc_params.append(param)
            else:
                head_params.append(param)

        self.optimizer = torch.optim.AdamW(
            [
                {"params": enc_params, "lr": 1e-4},
                {"params": head_params, "lr": 3e-4},
            ],
            weight_decay=1e-4,
        )