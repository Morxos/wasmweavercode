from typing import List
from gymnasium.spaces import Sequence, Dict, Box, Discrete
import numpy as np
from core.config.config import MAX_CONSTRAINTS
from core.constraints import AbstractConstraint, FuelConstraint, ByteCodeSizeConstraint


class ConstraintsEmbedder:

    def get_space(self):
        return Box(low=-np.inf, high=np.inf, shape=(MAX_CONSTRAINTS,), dtype=np.float32)

    def __call__(self, constraints: List[AbstractConstraint]):

        constraint_values = np.zeros(MAX_CONSTRAINTS, dtype=np.float32)
        for index, constraint in enumerate(constraints):

            current_state = (constraint.resource - constraint.min_target)/(constraint.max_target - constraint.min_target)
            constraint_values[index] = current_state

        return constraint_values


if __name__ == "__main__":
    constraints = [FuelConstraint(50, 100, 100), ByteCodeSizeConstraint(100, 200, 0)]
    embedder = ConstraintsEmbedder()
    embedding = embedder(constraints)
    print(embedding)
    print(embedder.get_space().contains(embedding))
    print(embedder.get_space())