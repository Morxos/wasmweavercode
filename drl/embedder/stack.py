# SPDX-License-Identifier: MIT
# SPDX-FileCopyrightText: 2025 Siemens AG

import numpy as np
from gymnasium.spaces import Box
from core.config.config import MAX_STACK_SIZE
from core.state.stack import Stack
from core.state.state import GlobalState
from core.value import I32, I64, F32, F64, RefFunc
from drl.embedder.values import embedd_value_type,  symlog_to_unit


class StackEmbedder:
    """
    Embeds the stack into a fixed size tensor.
    """
    def __init__(self):
        ...

    def get_space(self):
        return Box(low=-np.inf, high=np.inf, shape=(3,MAX_STACK_SIZE), dtype=np.float32)

    def __call__(self, stack: Stack, global_state: GlobalState):
        current_stack_frame = stack.get_current_frame()
        stack_values = current_stack_frame.stack
        id_tensor = np.zeros(MAX_STACK_SIZE, dtype=np.float32)
        mask = np.zeros(MAX_STACK_SIZE, dtype=np.float32)
        for i in range(MAX_STACK_SIZE):
            if i < len(stack_values):
                mask[i] = 1
            else:
                mask[i] = 0
        values_tensor = np.zeros(MAX_STACK_SIZE, dtype=np.float32)
        for i, value in enumerate(stack_values):
            id_tensor[i] = embedd_value_type(value)
            if isinstance(value, I32):
                values_tensor[i] = symlog_to_unit(value.value)
            elif isinstance(value, I64):
                values_tensor[i] = symlog_to_unit(value.value)
            elif isinstance(value, F32):
                values_tensor[i] = symlog_to_unit(value.value)
            elif isinstance(value, F64):
                values_tensor[i] = symlog_to_unit(value.value)
            elif isinstance(value, RefFunc):
                if value.value is None:
                    values_tensor[i] = -1
                else:
                    values_tensor[i] = global_state.functions.get(value.value).index #Its a function
            else:
                raise ValueError(f"Unknown value type: {type(value)}")

        return np.array([id_tensor, values_tensor, mask], dtype=np.float32)

