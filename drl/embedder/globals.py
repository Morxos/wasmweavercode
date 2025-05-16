import numpy as np
from gymnasium.spaces import Box

from core.config.config import MAX_GLOBALS_PER_MODULE
from core.state.globals import Globals, Global
from core.state.state import GlobalState
from core.value import I32, I64, Ref, F32, F64
from drl.embedder.values import embedd_value_type, symlog_to_unit


class GlobalsEmbedder:

    def __init__(self):
        ...

    def get_space(self):
        return Box(low=-np.inf, high=np.inf, shape=(4, MAX_GLOBALS_PER_MODULE,), dtype=np.float32)

    def __call__(self, _globals: Globals, global_state: GlobalState):
        global_types = np.zeros(MAX_GLOBALS_PER_MODULE, dtype=np.int32)
        global_values = np.zeros(MAX_GLOBALS_PER_MODULE, dtype=np.float32)
        global_mut = np.zeros(MAX_GLOBALS_PER_MODULE, dtype=np.float32)
        global_mask = np.zeros(MAX_GLOBALS_PER_MODULE, dtype=np.float32)

        for i, _global in enumerate(_globals.globals):
            global_types[i] = embedd_value_type(_global.value)
            if isinstance(_global.value, I32):
                global_values[i] = symlog_to_unit(_global.value.value)
            elif isinstance(_global.value, I64):
                global_values[i] = symlog_to_unit(_global.value.value)
            elif isinstance(_global.value, F32):
                global_values[i] = symlog_to_unit(_global.value.value)
            elif isinstance(_global.value, F64):
                global_values[i] = symlog_to_unit(_global.value.value)
            elif isinstance(_global.value, Ref):
                if _global.value.value is None:
                    global_values[i] = -1
                else:
                    global_values[i] = global_state.functions.get(_global.value.value).index
            else:
                raise Exception("Unknown global type: {}".format(type(_global)))
            global_mut[i] = 1 if _global.mutable else 0
            global_mask[i] = 1


        return np.array([global_types, global_values, global_mut, global_mask], dtype=np.float32)


if __name__ == "__main__":
    _globals = Globals()
    _globals.add(Global(I32(5),"test1", mutable=True))
    _globals.add(Global(I64(100),"test2", mutable=False))
    embedder = GlobalsEmbedder()
    embedding = embedder(_globals)
    print(embedding)
    print(embedder.get_space().contains(embedding))
    print(embedder.get_space())
