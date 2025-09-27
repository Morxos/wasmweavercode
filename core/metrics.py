from collections import Counter
from math import log2
from typing import List, Dict, Iterable

# ---------- helpers ----------------------------------------------------------
STRUCT_KEYS = ("[funcs]", "[globals]", "[imports]", "[memories]", "[tables]", "[tags]", "[vars]")
WASM_OPCODE_CATEGORIES = {
    # Core, always-on families
    "Control": {
        "Block", "Loop", "If", "Break",        # br / br_table often surfaced as "Break"/"Switch"
        "Call", "CallIndirect", "Return",
        "Unreachable", "Nop",
        "Switch",                               # wasm-tools label commonly used for br_table
    },
    "Parametric": {
        "Drop", "Select",
    },
    "Variable": {
        "LocalGet", "LocalSet", "LocalTee",
        "GlobalGet", "GlobalSet",
    },
    "Memory": {
        "Load", "Store",
        "MemorySize", "MemoryGrow",
        # Bulk memory (commonly enabled)
        "MemoryCopy", "MemoryFill", "MemoryInit", "DataDrop",
    },
    "Table": {
        # Include if your histograms expose any of these (some builds do)
        "TableGet", "TableSet", "TableGrow", "TableSize", "TableFill",
        "TableCopy", "TableInit", "ElemDrop",
    },
    "Numeric": {
        "Const", "Unary", "Binary",
        # (Covers i32.const/f64.const; i32.add/f32.sqrt/etc.)
    },

    # Optional feature families (present only if you enable these proposals)
    "Reference": {
        "RefNull", "RefIsNull", "RefFunc", "RefEq",
        # If surfaced by your toolchain:
        "CallRef", "ReturnCallRef", "ReturnCall", "ReturnCallIndirect",
        "Delegate", "Rethrow", "Throw", "Try", "Catch", "CatchAll",  # exceptions overlap; keep in Exceptions if you prefer
    },
    "SIMD": {
        "SIMDLoad", "SIMDShuffle", "SIMDReplace", "SIMDExtract", "SIMDShift",
        "V128Const", "V128Load", "V128Store", "V128Bitwise",  # include if these aliases appear
    },
    "Atomics": {
        "AtomicRMW", "AtomicCmpxchg", "AtomicWait", "AtomicNotify",
        # Add "AtomicFence", "AtomicLoad", "AtomicStore" if your histograms include them
    },
    "Exceptions": {
        "Try", "Catch", "CatchAll", "Throw", "Rethrow", "Delegate",
    },
    "GC_And_Tuples": {
        "TupleMake", "TupleExtract",
        # Put other GC/typed-ref ops here if emitted by your wasm-tools build
    },
}

import re

# Canonical category labels we’ll emit
CATS = (
    "Control", "Parametric", "Variable", "Memory", "Table",
    "Numeric", "Reference", "SIMD", "Atomics", "Exceptions"
)

# Lookup sets for fast exact matches (lowercased)
CONTROL_OPS = {
    "unreachable", "nop", "block", "loop", "if", "else", "end",
    "br", "br_if", "br_table", "return", "call", "call_indirect"
}
PARAMETRIC_OPS = {"drop", "select"}
VARIABLE_OPS = {"local.get", "local.set", "local.tee", "global.get", "global.set"}

# Memory (incl. bulk memory)
MEMORY_EXACT = {
    "memory.size", "memory.grow",
    "memory.copy", "memory.fill", "memory.init", "data.drop"
}

# Table/element ops (names vary; handle both spec-style "table.get" and wasm-tools variants)
TABLE_PREFIXES = ("table.",)
TABLE_EXACT = {"elem.drop", "table.copy", "table.init", "table.grow", "table.size", "table.fill", "table.get", "table.set"}

# Reference types
REF_PREFIX = "ref."
REFERENCE_EXACT = {"ref.null", "ref.is_null", "ref.func", "ref.eq"}

# Exceptions proposal
EXCEPTIONS_EXACT = {"try", "catch", "catch_all", "throw", "rethrow", "delegate"}

# SIMD: v128.* and lane forms like i8x16.add, f32x4.mul, etc.
SIMD_PREFIXES = ("v128.",)
SIMD_LANE_RE = re.compile(r"^(?:[if][0-9]{1,2}x[0-9]{1,2})\.")

# Atomics (threads): i32.atomic.*, i64.atomic.*, memory.atomic.wait32/64, atomic.fence, etc.
ATOMICS_RE = re.compile(r"(?:^|\.)atomic(\.|_)")

# Loads/stores (scalar & packed): handle any typed prefix + .load/.store + suffixes
LOAD_STORE_RE = re.compile(r"\.load|\.store")

# Numeric typed prefixes we’ll see a lot
NUMERIC_TYPES = ("i32", "i64", "f32", "f64")

def classify_op(op: str) -> str:
    """
    Map a single Wasm opcode token (e.g., 'i32.add', 'local.get', 'br_if') to a category label.
    """
    x = op.strip().lower()

    # 1) Exact / obvious families
    if x in CONTROL_OPS:      return "Control"
    if x in PARAMETRIC_OPS:   return "Parametric"
    if x in VARIABLE_OPS:     return "Variable"
    if x in MEMORY_EXACT:     return "Memory"
    if x in TABLE_EXACT or x.startswith(TABLE_PREFIXES): return "Table"
    if x in REFERENCE_EXACT or x.startswith(REF_PREFIX): return "Reference"
    if x in EXCEPTIONS_EXACT: return "Exceptions"

    # 2) SIMD (v128.* or lane-style like i8x16.add / f32x4.mul / i16x8.shr_u etc.)
    if x.startswith(SIMD_PREFIXES) or SIMD_LANE_RE.match(x):
        return "SIMD"

    # 3) Atomics
    if ATOMICS_RE.search(x):
        return "Atomics"

    # 4) Memory: any typed load/store forms (i32.load16_s, i64.store8, f32.load, etc.)
    if LOAD_STORE_RE.search(x):
        return "Memory"

    # 5) Control aliases some toolchains emit
    if x == "switch":  # often used by tools for br_table
        return "Control"

    # 6) Numeric: typed arithmetic/comparison/convert/const/etc.
    #    Anything starting with i32/i64/f32/f64 and not caught above -> Numeric.
    for t in NUMERIC_TYPES:
        if x.startswith(t + "."):
            return "Numeric"

    # 7) Fallback guesses:
    if x.endswith(".const"):
        return "Numeric"

    # If we truly don’t recognize it, treat as Numeric (most safe default for typed ops),
    # but you can also return "Unknown" if you prefer to surface it.
    return "Unknown"


def abstract_trigram(trigram: str) -> str:
    """
    Convert a concrete trigram like 'local.get i32.const i32.add'
    into an abstracted category trigram like 'Variable Numeric Numeric'.
    """
    toks = trigram.strip().split()
    if len(toks) != 3:
        # be forgiving: classify whatever is present
        cats = [classify_op(tok) for tok in toks]
    else:
        cats = [classify_op(toks[0]), classify_op(toks[1]), classify_op(toks[2])]
    return " ".join(cats)

def make_feature_vector(
    opcode_counts: Dict[str, int],
    struct_counts: Dict[str, int],
    trigram_counts: Dict[str, int],
    struct_keys:  Iterable[str] = STRUCT_KEYS,
) -> Dict[str, float]:
    """
    Merge opcode and structure dictionaries into one normalised feature vector.
    """
    vec: Dict[str, float] = {}

    # --- opcode slice -------------------------------------------------------
    total_ops = sum(opcode_counts.values()) or 1
    for k, v in opcode_counts.items():
        vec[f"op_{k}"] = v / total_ops

    # --- structure slice ----------------------------------------------------
    total_struct = sum(struct_counts.get(k, 0) for k in struct_keys) or 1
    for k in struct_keys:
        vec[f"s_{k}"] = struct_counts.get(k, 0) / total_struct

    # --- trigram slice ----------------------------------------------------
    total_trigrams = sum(trigram_counts.values()) or 1
    for k, v in trigram_counts.items():
        vec[f"t_{k}"] = v / total_trigrams

    return vec


def _normalize(counts: Counter) -> Dict[str, float]:
    """Turn absolute opcode counts into a probability distribution."""
    total = sum(counts.values())
    return {k: v / total for k, v in counts.items()} if total else {}


def _kl(p: Dict[str, float], q: Dict[str, float], eps: float = 1e-12) -> float:
    """K‑L divergence  (logs are base-2 so the result is in bits)."""
    return sum(pi * log2(pi / max(q.get(k, 0.0), eps)) for k, pi in p.items() if pi)


def _jsd(p: Dict[str, float], q: Dict[str, float]) -> float:
    """Jensen–Shannon distance."""
    keys = p.keys() | q.keys()
    m = {k: 0.5 * (p.get(k, 0.0) + q.get(k, 0.0)) for k in keys}
    return 0.5 * _kl(p, m) + 0.5 * _kl(q, m)


def _similarity(p: Dict[str, float], q: Dict[str, float]) -> float:
    """Convert JSD to a similarity score in [0,1] (higher is better)."""
    return 1.0 - _jsd(p, q)


def _aggregate(dicts: List[Dict[str, int]]) -> Dict[str, int]:
    """Combine many count dictionaries into one normalised distribution."""
    combined = Counter()
    for d in dicts:
        combined.update(d)
    return combined

def _struct_dist(counts: Dict[str, int], keys=STRUCT_KEYS) -> Dict[str, float]:
    vec = {k: counts.get(k, 0) for k in keys}
    total = sum(vec.values()) or 1.0
    return {k: v / total for k, v in vec.items()}

def _weighted_mean(sims, weights):
    total = sum(weights)
    return sum(w * s for w, s in zip(weights, sims)) / total if total else 0.0

def get_opcode_bucket(opcode: str):
    for category, opcodes in WASM_OPCODE_CATEGORIES.items():
        if opcode in opcodes:
            return category
    return "Other"



def score_generated_module_with_structure(
    corpus_module_opcodes: List[Dict[str, int]],
    new_module_opcodes:    Dict[str, int],
    corpus_trigram_distribution: Dict[str, int],
    new_module_trigram_distribution:  Dict[str, int]
):
    """
    Returns a composite similarity:
        score = (1‑beta) * opcode_score + beta * structure_score
    where opcode_score = alpha*module + (1‑alpha)*function
    """
    bucket_gen_mod_dist = Counter()
    for opcode, count in new_module_opcodes.items():
        bucket = get_opcode_bucket(opcode)
        bucket_gen_mod_dist[bucket] += count

    bucket_ref_mod_dist = Counter()
    for mod_opcodes in corpus_module_opcodes:
        for opcode, count in mod_opcodes.items():
            bucket = get_opcode_bucket(opcode)
            bucket_ref_mod_dist[bucket] += count

    bucket_gen_trigram_dist = Counter()
    for trigram, count in new_module_trigram_distribution.items():
        abstracted = abstract_trigram(trigram)
        bucket_gen_trigram_dist[abstracted] += count
    bucket_gen_trigram_dist = _normalize(bucket_gen_trigram_dist)
    print("gen_trigram_dist", new_module_trigram_distribution)
    print("bucket_gen_trigram_dist", bucket_gen_trigram_dist)

    bucket_ref_trigram_dist = Counter()
    for trigram, count in corpus_trigram_distribution.items():
        #print("Trigram 2:", trigram)
        abstracted = abstract_trigram(trigram)
        bucket_ref_trigram_dist[abstracted] += count

    bucket_ref_trigram_dist = _normalize(bucket_ref_trigram_dist)
    #print(bucket_ref_trigram_dist)

    bucket_ref_mod_dist = _normalize(bucket_ref_mod_dist)
    bucket_gen_mod_dist = _normalize(bucket_gen_mod_dist)
    print("Ref mod:",bucket_ref_mod_dist)
    print("Gen mod:",bucket_gen_mod_dist)

    ref_mod_dist  = _normalize(_aggregate(corpus_module_opcodes))
    gen_mod_dist  = _normalize(Counter(new_module_opcodes))

    mod_sim  = _similarity(gen_mod_dist, ref_mod_dist)
    bucket_sim = _similarity(bucket_gen_mod_dist, bucket_ref_mod_dist)
    trigram_sim = _similarity(bucket_gen_trigram_dist, bucket_ref_trigram_dist)

    # 3) COMBINE
    return mod_sim, bucket_sim, trigram_sim

if __name__ == '__main__':
    print(abstract_trigram("i32.load8_s"))
    # Example usage
    corpus_module_opcodes = [{'LocalGet': 5, 'Const': 10,'Unary': 5},
                             {'LocalGet': 2, 'Const': 4,'Unary': 5},
                             {'LocalGet': 7, 'Const': 15,'Unary': 5}]
    new_module_opcodes = {'LocalGet': 2, 'Unary': 5}

    corpus_module_trigram_dist = {
        'Local.Get i32.const i32.add': 10,
        'i32.const i32.add Local.Set': 5,
        'Local.Get i32.const i32.mul': 3,
        'i32.const i32.mul Local.Set': 2,
    }
    new_module_trigram_dist = {
        'Local.Get i32.const i32.add': 4,
        'i32.const i32.add Local.Set': 1,
    }
    score = score_generated_module_with_structure(corpus_module_opcodes,
                                                  new_module_opcodes,
                                                  corpus_module_trigram_dist,
                                                  new_module_trigram_dist)
    print(f"Similarity score: {score}")
