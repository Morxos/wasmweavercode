# SPDX-License-Identifier: MIT
# SPDX-FileCopyrightText: 2025 Siemens AG

import numpy as np
from gymnasium.spaces import Box

from core.config.config import MAX_BLOCK_INPUTS, \
    MAX_BLOCK_OUTPUTS
from core.state.functions import Block, MAX_BLOCK_TYPE_INDEX
from drl.embedder.values import embedd_value_type, MAX_VALUE_TYPE_INDEX


class BlockEmbedder:
    """
    Embeds a block into a fixed size tensor.
    """
    def __init__(self):
        ...

    def get_space(self):
        return Box(low=-np.inf, high=np.inf, shape=(MAX_BLOCK_INPUTS*(MAX_VALUE_TYPE_INDEX+1) + MAX_BLOCK_OUTPUTS*(MAX_VALUE_TYPE_INDEX+1) + 2 + (MAX_BLOCK_TYPE_INDEX+1) + 1,), dtype=np.float32)

    def __call__(self, block: Block, depth):
        inputs_tensor = np.zeros(MAX_BLOCK_INPUTS*(MAX_VALUE_TYPE_INDEX+1), dtype=np.float32)
        outputs_tensor = np.zeros(MAX_BLOCK_OUTPUTS*(MAX_VALUE_TYPE_INDEX+1), dtype=np.float32)
        type_tensor = np.zeros(MAX_BLOCK_TYPE_INDEX+1, dtype=np.float32)
        block_input_count = np.float32(len(block.inputs))
        block_output_count = np.float32(len(block.outputs))
        for i, input_type in enumerate(block.inputs):
            one_hot = np.zeros(MAX_VALUE_TYPE_INDEX+1, dtype=np.float32)
            one_hot[embedd_value_type(input_type.get_default_value())] = 1
            inputs_tensor[i*(MAX_VALUE_TYPE_INDEX+1):(i+1)*(MAX_VALUE_TYPE_INDEX+1)] = one_hot

        for i, output_type in enumerate(block.outputs):
            one_hot = np.zeros(MAX_VALUE_TYPE_INDEX+1, dtype=np.float32)
            one_hot[embedd_value_type(output_type.get_default_value())] = 1
            outputs_tensor[i*(MAX_VALUE_TYPE_INDEX+1):(i+1)*(MAX_VALUE_TYPE_INDEX+1)] = one_hot

        type_tensor[block.type.value] = 1

        # Add depth
        depth_tensor = np.zeros(1, dtype=np.float32)
        depth_tensor[0] = depth

        # Embedd into one tensor
        all_inputs = np.concatenate((inputs_tensor, outputs_tensor, np.array([block_input_count]), np.array([block_output_count]), type_tensor, depth_tensor))

        return all_inputs
