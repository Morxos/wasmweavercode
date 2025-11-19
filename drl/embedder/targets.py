# SPDX-License-Identifier: MIT
# SPDX-FileCopyrightText: 2025 Siemens AG

from typing import List, Tuple
from gymnasium.spaces import Box
import numpy as np
from core.config.config import MAX_CONSTRAINTS


class TargetsEmbedder:
    """
    Embeds the targets into a fixed size tensor.
    """

    def get_space(self):
        return Box(low=-np.inf, high=np.inf, shape=(MAX_CONSTRAINTS,), dtype=np.float32)

    def __call__(self, targets: List[Tuple[int,int]]):

        target_values = np.zeros(MAX_CONSTRAINTS, dtype=np.float32)
        for index, target in enumerate(targets):

            current_state = target[0]/target[1]  # Normalize to [0, 1]
            target_values[index] = current_state
        return target_values