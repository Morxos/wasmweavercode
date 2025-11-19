# SPDX-License-Identifier: MIT
# SPDX-FileCopyrightText: 2025 Siemens AG

from typing import List
from gymnasium.spaces import Box
import numpy as np
from core.config.config import MAX_CONSTRAINTS
from core.constraints import AbstractConstraint


class ConstraintsEmbedder:
    """
    Embeds the constraints into a fixed size tensor.
    """
    def get_space(self):
        return Box(low=-np.inf, high=np.inf, shape=(MAX_CONSTRAINTS,), dtype=np.float32)

    def __call__(self, constraints: List[AbstractConstraint]):

        constraint_values = np.zeros(MAX_CONSTRAINTS, dtype=np.float32)
        for index, constraint in enumerate(constraints):

            current_state = (constraint.resource - constraint.min_target)/(constraint.max_target - constraint.min_target)
            constraint_values[index] = current_state

        return constraint_values