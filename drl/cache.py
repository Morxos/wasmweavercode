import json
import os
import math
import shutil
import uuid
from collections import deque
from typing import Dict, List

from core.value import Val, F32, F64, I64, I32, RefFunc


# --------------------------------------------------------------------------- #
#  Small helper: Jensen–Shannon distance in bits, given two prob. dictionaries
# --------------------------------------------------------------------------- #
def jsd(p: Dict[str, float],
        q: Dict[str, float],
        eps: float = 1e-12) -> float:
    """Jensen‑Shannon *divergence* in bits (0‥1)."""

    # union of support
    keys = p.keys() | q.keys()
    p = {k: p.get(k, 0.0) for k in keys}
    q = {k: q.get(k, 0.0) for k in keys}

    # normalise to probability masses
    sp, sq = sum(p.values()), sum(q.values())
    if sp == 0 or sq == 0:
        return 0.0
    for k in keys:
        p[k] /= sp
        q[k] /= sq

    m = {k: 0.5 * (p[k] + q[k]) for k in keys}

    def _kl(a, b):
        return sum(a[k] * math.log2(a[k] / max(b[k], eps))
                   for k in keys if a[k] > 0)

    return 0.5 * _kl(p, m) + 0.5 * _kl(q, m)


# --------------------------------------------------------------------------- #
#  FIFO novelty cache
# --------------------------------------------------------------------------- #
class ProgramCache:
    """
    Keeps the last `capacity` feature‑vectors plus their WAT & meta strings.
    • novelty(feature)  -> min_JSD w.r.t. elements in cache  (∈ [0,1])
    • add(...)          puts a new sample in the cache (dropping oldest)
    • flush(path)       writes *.wat and *.meta files and clears the cache
    """

    def __init__(self, capacity: int = 500, flush_interval: int = 100, out_dir: str = "cache"):
        self.capacity = capacity
        self.buffer: deque = deque(maxlen=capacity)
        self.flush_interval = flush_interval
        self.flush_counter = 0
        self.out_dir = out_dir
        #self.wipe_output_dir()

    # ------------------- public API -----------------------------------------
    def add(self,
            feature_vec: Dict[str, float],
            wat_code: str,
            meta_str: str) -> None:
        """Insert a sample; evicts the oldest if over capacity."""
        self.buffer.append({
            "vec":  feature_vec,
            "wat":  wat_code,
            "meta": meta_str
        })
        #self.flush_counter += 1
        #if self.flush_counter >= self.flush_interval:
        #    self.flush_counter = 0
        #    self.flush(self.out_dir)


    def build_meta(self, reward: float, flag_states: Dict[str,bool], return_values: List[Val], stack_values: List[Val])->str:
        def value_to_str(val: Val) -> str:
            if isinstance(val, F32):
                return f"{float(val.value)}"
            if isinstance(val, F64):
                return f"{float(val.value)}"
            if isinstance(val, I64):
                return f"{int(val.value)}"
            if isinstance(val, I32):
                return f"{int(val.value)}"
            if isinstance(val, RefFunc):
                return f"{"Null" if val.value is None else val.value.name}"
        meta_json_dict = {
            "reward": reward,
            "flag_states": flag_states,
            "return_values": [{"type":val.get_wasm_type(),"value":value_to_str(val)} for val in return_values],
            "stack_values":  [{"type":val.get_wasm_type(),"value":value_to_str(val)} for val in stack_values]
        }
        return json.dumps(meta_json_dict, indent=4)



    def novelty(self, feature_vec: Dict[str, float]) -> float:
        """Reward = nearest JSD to anything already stored (higher = more novel)."""
        if not self.buffer:
            return 1.0                      # first sample is maximally novel
        min_d = min(jsd(feature_vec, item["vec"]) for item in self.buffer)
        return min_d

    def wipe_output_dir(self) -> None:
        """
        Wipe the output directory.
        """
        if os.path.exists(self.out_dir):
            shutil.rmtree(self.out_dir)
        os.makedirs(self.out_dir, exist_ok=True)

    def flush(self, out_dir: str) -> None:
        """
        Dump every cached item as:
            <uuid>.wat    – raw WAT text
            <uuid>.meta   – meta string
        Then clear the cache.
        """
        #Wipe the output directory
        self.wipe_output_dir()

        for i in range(len(self.buffer)):
            item = self.buffer[i]
            uid  = uuid.uuid4().hex
            with open(os.path.join(out_dir, f"{uid}.wat"),  "w") as f_wat:
                f_wat.write(item["wat"])
            with open(os.path.join(out_dir, f"{uid}.meta"), "w") as f_meta:
                f_meta.write(item["meta"])
