import math
import sys

import numpy as np

from core.value import Val, I32, I64, F32, F64, RefFunc

MAX_VALUE_TYPE_INDEX = 5

def embedd_value_type(value: Val):
    if isinstance(value, I32):
        return 1
    elif isinstance(value, I64):
        return 2
    elif isinstance(value, F32):
        return 3
    elif isinstance(value, F64):
        return 4
    elif isinstance(value, RefFunc):
        return 5
    raise ValueError(f"Unknown value type: {type(value)}")

_LOG_MAX64 = math.log1p(sys.float_info.max)


def symlog_to_unit(x):
    x64 = np.asarray(x, dtype=np.float64)
    nan_mask = np.isnan(x64)
    inf_mask = np.isinf(x64)
    abs_clamped = np.minimum(np.abs(x64), sys.float_info.max)
    y = np.sign(x64) * np.log1p(abs_clamped) / _LOG_MAX64
    y = np.where(inf_mask, np.sign(x64), y)
    y = np.where(nan_mask, 0.0, y)
    return y.astype(np.float32, copy=False)