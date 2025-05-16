import numpy as np
from gymnasium.spaces import Box

from core.config.config import MAX_GLOBALS_PER_MODULE, MAX_LOCALS_PER_FUNCTION
from core.state.functions import Function
from core.state.globals import Globals, Global
from core.state.locals import Locals
from core.state.state import GlobalState
from core.value import I32, I64, F32, F64, Ref
from drl.embedder.values import embedd_value_type, symlog_to_unit


class LocalsEmbedder:

    def __init__(self):
        ...

    def get_space(self):
        return Box(low=-np.inf, high=np.inf, shape=(3, MAX_LOCALS_PER_FUNCTION,), dtype=np.float32)

    def __call__(self, _locals: Locals, global_state: GlobalState):
        local_types = np.zeros(MAX_LOCALS_PER_FUNCTION, dtype=np.int32)
        local_values = np.zeros(MAX_LOCALS_PER_FUNCTION, dtype=np.float32)
        local_mask = np.zeros(MAX_LOCALS_PER_FUNCTION, dtype=np.float32)

        for i, _local in enumerate(_locals.locals):
            local_types[i] = embedd_value_type(_local)
            if isinstance(_local, I32):
                local_values[i] = symlog_to_unit(_local.value)
            elif isinstance(_local, I64):
                local_values[i] = symlog_to_unit(_local.value)
            elif isinstance(_local, F32):
                local_values[i] = symlog_to_unit(_local.value)
            elif isinstance(_local, F64):
                local_values[i] = symlog_to_unit(_local.value)
            elif isinstance(_local, Ref):
                if _local.value is None:
                    local_values[i] = -1
                else:
                    local_values[i] = global_state.functions.get(_local.value).index

            else:
                raise Exception("Unknown local type: {}".format(type(_local)))

            local_mask[i] = 1

        return np.array([local_types, local_values, local_mask], dtype=np.float32)


if __name__ == "__main__":
    _locals = Locals()
    _locals.add(I32(5))
    _locals.add(I64(100))
    embedder = LocalsEmbedder()
    embedding = embedder(_locals, global_state=GlobalState())
    print(embedding)
    print(embedder.get_space().contains(embedding))
    print(embedder.get_space())
