# SPDX-License-Identifier: MIT
# SPDX-FileCopyrightText: 2025 Siemens AG

import torch
from sb3_contrib.common.maskable.policies import MaskableMultiInputActorCriticPolicy

class CustomMaskablePolicy(MaskableMultiInputActorCriticPolicy):
    """
    Custom policy with different learning rates for encoder and heads.
    """
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