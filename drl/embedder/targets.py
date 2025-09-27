from typing import List, Tuple
from gymnasium.spaces import Sequence, Dict, Box, Discrete
import numpy as np
from core.config.config import MAX_CONSTRAINTS
from core.constraints import AbstractConstraint, FuelConstraint, ByteCodeSizeConstraint


class TargetsEmbedder:

    def get_space(self):
        return Box(low=-np.inf, high=np.inf, shape=(MAX_CONSTRAINTS,), dtype=np.float32)

    def __call__(self, targets: List[Tuple[int,int]]):

        target_values = np.zeros(MAX_CONSTRAINTS, dtype=np.float32)
        for index, target in enumerate(targets):

            current_state = target[0]/target[1]  # Normalize to [0, 1]
            target_values[index] = current_state
        return target_values


if __name__ == "__main__":
    targets = [(5, 10), (20, 10)]
    embedder = TargetsEmbedder()
    embedding = embedder(targets)
    print(embedding)
    print(embedder.get_space().contains(embedding))
    print(embedder.get_space())