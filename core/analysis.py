import functools
import math
import subprocess
from collections import Counter
from typing import List, Dict, Union, Sequence
import numpy as np
from scipy.special import rel_entr

from core.runner import wat_to_wasm_bytes


def line_is_heading(line: str) -> bool:
    """Checks if the line starts not with a space."""
    return line and not line.startswith(" ")

def get_heading_from_line(line: str) -> str:
    return line.strip()

def line_is_key_value_pair(line: str) -> bool:
    """Checks if the line is a key-value pair."""
    return ":" in line and line.startswith(" ")

def get_key_value_from_line(line: str) -> tuple:
    """Returns the key and value from the line."""
    key, value = line.split(":", 1)
    return key.strip(), int(value.strip())

@functools.lru_cache(maxsize=128)
def wasm_to_wat(wasm: bytes) -> str:
    """Converts the given wasm bytes to wat code using wasm2wat."""
    process = subprocess.Popen(
        ["wasm-tools", "print", "-"],  # Read from stdin and write to stdout
        stdin=subprocess.PIPE,
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
    )

    wat_code, stderr = process.communicate(input=wasm)

    if process.returncode != 0:
        raise RuntimeError(f"wasm2wat error: {stderr}")

    return wat_code.decode('utf-8')

@functools.lru_cache(maxsize=128)
def wat_to_wasm(wat: str) -> bytes:
    """Converts the given wat code to wasm bytes using wasm-tools"""
    process = subprocess.Popen(
        ["wasm-tools", "parse", "-"],  # Read from stdin and write to stdout
        stdin=subprocess.PIPE,
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE
    )

    wasm_bytes, stderr = process.communicate(input=wat.encode('utf-8'))

    if process.returncode != 0:
        raise RuntimeError(f"wat to wasm error: {stderr}")

    return wasm_bytes

@functools.lru_cache(maxsize=128)
def get_module_statistics(wat: str | bytes ):
    """Gets module statistics from the given wat code using wasm-opt."""

    process = subprocess.Popen(
        ['wasm-opt', '--metrics','-all', '--enable-reference-types','--enable-multivalue',"--ignore-implicit-traps"],
        stdin=subprocess.PIPE,
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
        text=True if isinstance(wat, str) else False,
    )

    stats, stderr = process.communicate(input=wat)

    if not isinstance(wat, str):
        stats = stats.decode('utf-8')

    if process.returncode != 0:
        raise RuntimeError(f"wasm-opt error: {stderr}")

    stats_dict = {}

    for line in stats.splitlines():
        if line_is_key_value_pair(line):
            key, value = get_key_value_from_line(line)
            stats_dict[key] = value
    if isinstance(wat, str):
        wasm_bytes = wat_to_wasm_bytes(wat)
    else:
        wasm_bytes = wat
    stats_dict["[binary-bytes]"] = len(wasm_bytes)
    return stats_dict

def extract_op_code_counts_from_dicts(dicts: List[Dict[str, int]]):
    """Extracts the op code counts from the given dictionaries."""
    op_code_counts_list = []
    for d in dicts:
        op_code_counts = {}
        for key, value in d.items():
            if key.startswith("[") and key.endswith("]"):
                continue
            else:
                op_code_counts[key] = value
        op_code_counts_list.append(op_code_counts)
    return op_code_counts_list

def extract_structural_counts_from_dicts(dicts: List[Dict[str, int]]):

    """Extracts the structural counts from the given dictionaries."""
    structural_counts_list = []
    for d in dicts:
        structural_counts = {}
        for key, value in d.items():
            if key.startswith("[") and key.endswith("]"):
                structural_counts[key] = value
            else:
                continue
        structural_counts_list.append(structural_counts)
    return structural_counts_list


def pairwise_js(a: dict[str, int], b: dict[str, int], alpha: float = 1.0) -> float:
    if a == b:
        return 0.0

    ca, cb       = Counter(a), Counter(b)
    vocab        = ca.keys() | cb.keys()
    V            = len(vocab)

    def to_prob(counter):
        vec = np.fromiter((counter.get(k, 0) for k in vocab),
                          dtype=float, count=V)
        return (vec + alpha) / (vec.sum() + alpha * V)

    pa, pb = to_prob(ca), to_prob(cb)
    m      = 0.5 * (pa + pb)
    jsd    = 0.5 * (rel_entr(pa, m).sum() + rel_entr(pb, m).sum())

    return math.sqrt(jsd)

def js_distance_sample_vs_corpus(sample_dicts, corpus_iter, alpha: float = 1.0):

    vocab      = set()
    sample_cnt = Counter()
    corpus_cnt = Counter()

    for d in sample_dicts:
        sample_cnt.update(d)
        vocab.update(d)

    for d in corpus_iter:
        corpus_cnt.update(d)
        vocab.update(d)

    vocab      = sorted(vocab)         # stable order → deterministic
    V          = len(vocab)

    def to_prob_vec(counter):
        vec = np.fromiter((counter.get(k, 0) for k in vocab),
                          dtype=float, count=V)
        return (vec + alpha) / (vec.sum() + alpha * V)

    p_sample  = to_prob_vec(sample_cnt)
    p_corpus  = to_prob_vec(corpus_cnt)

    m    = 0.5 * (p_sample + p_corpus)
    js   = 0.5 * (rel_entr(p_sample, m).sum() +
                  rel_entr(p_corpus, m).sum())
    dist = float(math.sqrt(js))        # ∈ [0,1]

    return dist

def overall_zscore(
    corpus:  List[Dict[str, float]],
    samples: Union[Dict[str, float], List[Dict[str, float]]],
    *,
    feature_keys: Sequence[str] | None = None,
    eps: float = 1e-12,
) -> float:

    # 0. Ensure `samples` is a list
    if isinstance(samples, dict):
        samples = [samples]

    # 1. Determine the feature set / column order
    if feature_keys is None:
        feature_keys = sorted(
            {k for d in corpus for k in d}.union(
                {k for d in samples for k in d})
        )
    F = len(feature_keys)

    # 2. Build corpus matrix (M × F) and compute μ, σ
    corpus_mat = np.array(
        [[d.get(k, 0.0) for k in feature_keys] for d in corpus],
        dtype=float,
    )
    mu    = corpus_mat.mean(axis=0)
    sigma = corpus_mat.std(axis=0)
    sigma = np.where(sigma < eps, 1.0, sigma)         # avoid /0

    # 3. Build sample matrix (N × F) and z‑score
    sample_mat = np.array(
        [[d.get(k, 0.0) for k in feature_keys] for d in samples],
        dtype=float,
    )
    z = (sample_mat - mu) / sigma                     # N × F

    # 4. RMS z‑score across samples & features
    rms_z = float(np.sqrt(np.mean(z ** 2)))
    return rms_z

def convert_to_relative(input: List[Dict[str, int]] | Dict[str, int]) -> List[Dict[str, float]]:
    """Converts the given input to relative values."""
    if isinstance(input, dict):
        #Find max value
        max_value = max(input.values())
        if max_value == 0:
            max_value = 1
        return [{k: v / max_value for k, v in input.items()}]
    elif isinstance(input, list):
        #Max values
        max_values = [max(item.values()) for item in input]
        #Replace 0 values with 1
        max_values = [max_value if max_value > 0 else 1 for max_value in max_values]
        return [{k: v / max_value for k, v in item.items()} for item, max_value in zip(input, max_values)]
    else:
        raise ValueError("Input must be a dictionary or a list of dictionaries.")

def add_dict_to_corpus(corpus: List[Dict[str, float]], new_dict: Dict[str, float]) -> List[Dict[str, float]]:
    """Adds the given dictionary to the corpus."""
    # Check if the new_dict is already in the corpus
    total_keys = set()
    if corpus:
        #Get first item
        first_item = corpus[0]
        #Get keys
        total_keys.update(first_item.keys())
    new_keys = set(new_dict.keys())
    new_keys_found = False
    for key in new_keys:
        if key not in total_keys:
            new_keys_found = True
            break
    total_keys.update(new_keys)
    #For each element in corpus, check if the key is in the dict, otherwise add it with 0.0
    if new_keys_found:
        for item in corpus:
            for key in total_keys:
                if key not in item:
                    item[key] = 0.0
    #For each element in the new_dict, check if the key is in the corpus, otherwise add it with 0.0
    for key in total_keys:
        if key not in new_dict:
            new_dict[key] = 0.0

    #Add the new_dict to the corpus
    corpus.append(new_dict)

@functools.lru_cache(maxsize=128)
def get_function_statistics(wat: str | bytes) -> List[Dict[str,int]]:
    """Gets function statistics from the given wat code using wasm-opt."""

    process = subprocess.Popen(
        ['wasm-opt', '--func-metrics','-all','--enable-reference-types','--enable-multivalue'],
        stdin=subprocess.PIPE,
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
        text=True if isinstance(wat, str) else False,
    )

    stats, stderr = process.communicate(input=wat)
    if not isinstance(wat, str):
        stats = stats.decode('utf-8')
    if process.returncode != 0:
        raise RuntimeError(f"wasm-opt error: {stderr}")

    functions_list=[]
    stats_dict = None
    extract = False
    for line in stats.splitlines():
        if line_is_heading(line):
            if get_heading_from_line(line).startswith("func"):
                extract = True
                if stats_dict is not None:
                    functions_list.append(stats_dict)
                stats_dict = {}
            else:
                if stats_dict is not None:
                    functions_list.append(stats_dict)
                stats_dict = None
                extract = False
        if line_is_key_value_pair(line) and extract:
            key, value = get_key_value_from_line(line)
            stats_dict[key] = value

    return functions_list

def main():
    #Load wat file
    #with open("wasmbench/filtered-binaries-metadata/filtered/0a64356fffcfa5ce37e46afe3a2683b9f0fe0de682af851e96b878745dda69b7.wasm", "rb") as f:
    #    wasm_code = f.read()
    #stats = get_module_statistics(wasm_to_wat(wasm_code))
    #print(stats)
    sample = [{"i32.add": 100, "i32.sub": 200, "i32.mul": 300}]
    a = [{"i32.add": 1, "i32.sub": 2, "i32.mul": 3}, {"i32.add": 1, "i32.sub": 2, "i32.mul": 3}]
    print(js_distance_sample_vs_corpus(sample, a))
if __name__ == "__main__":
    main()