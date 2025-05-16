import numpy as np
from gymnasium.spaces import Dict, MultiDiscrete, Box
import math
import sys
from core.config.config import MAX_STACK_SIZE
from core.state.stack import Stack, StackFrame
from core.state.state import GlobalState
from core.value import I32, I64, F32, F64, RefFunc
from drl.embedder.sequence import SequenceEncoder
from drl.embedder.values import embedd_value_type, MAX_VALUE_TYPE_INDEX, symlog_to_unit
import torch
import torch.nn as nn



class StackEmbedder:
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
        stack_size = np.float32(len(current_stack_frame.stack))
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



if __name__ == "__main__":
    stack = Stack()
    stack.stack_frames.append(StackFrame())
    stack.stack_frames[0].stack_push(I32(1))
    stack.stack_frames[0].stack_push(I64(2))
    stack.stack_frames[0].stack_push(F32(3.0))
    stack.stack_frames[0].stack_push(F64(4.0))

    stack_embedder = StackEmbedder()
    embedding = stack_embedder(stack, GlobalState())
    print(stack_embedder.get_space().contains(embedding))
    print(embedding)

    stack_encoder = SequenceEncoder(MAX_VALUE_TYPE_INDEX+1, 16, n_heads=2, n_layers=2, max_len=MAX_STACK_SIZE)
    ids = torch.tensor(embedding[0], dtype=torch.int64).unsqueeze(0)
    values = torch.tensor(embedding[1], dtype=torch.float32).unsqueeze(0)
    mask = torch.tensor(embedding[2], dtype=torch.float32).unsqueeze(0)

    print(stack_encoder(ids, values, mask))

