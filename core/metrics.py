from collections import Counter
from math import log2
from typing import List, Dict, Iterable

# ---------- helpers ----------------------------------------------------------
STRUCT_KEYS = ("[funcs]", "[globals]", "[imports]", "[memories]", "[tables]", "[tags]", "[vars]")

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

def score_generated_module_with_structure(
    corpus_module_opcodes: List[Dict[str, int]],
    corpus_func_opcodes:   List[Dict[str, int]],
    corpus_structs:        List[Dict[str, int]],
    new_module_opcodes:    Dict[str, int],
    new_func_opcodes:      List[Dict[str, int]],
    new_struct:            Dict[str, int],
    trigram_distribution_corpus: Dict[str, int] = None,
    trigram_distribution: Dict[str, int] = None,
    alpha: float = 0.5,
    beta:  float = 0.2,
):
    """
    Returns a composite similarity:
        score = (1‑beta) * opcode_score + beta * structure_score
    where opcode_score = alpha*module + (1‑alpha)*function
    """
    ref_mod_dist  = _normalize(_aggregate(corpus_module_opcodes))
    ref_func_dist = _normalize(_aggregate(corpus_func_opcodes))
    gen_mod_dist  = _normalize(Counter(new_module_opcodes))
    gen_func_dists = [_normalize(Counter(fd)) for fd in new_func_opcodes]

    mod_sim  = _similarity(gen_mod_dist, ref_mod_dist)
    trigram_sim = _similarity(_normalize(trigram_distribution_corpus),_normalize(trigram_distribution))
    func_sims = [_similarity(fd, ref_func_dist) for fd in gen_func_dists]
    mean_func_sim = _weighted_mean(func_sims,
                                   [sum(fd.values()) for fd in new_func_opcodes])

    opcode_score = alpha * mod_sim + (1 - alpha) * mean_func_sim

    ref_struct_dist = _struct_dist(_aggregate(corpus_structs))
    gen_struct_dist = _struct_dist(new_struct)

    structure_score = _similarity(gen_struct_dist, ref_struct_dist)

    # 3) COMBINE
    return ((1 - beta) * opcode_score + beta * structure_score + trigram_sim)/2

if __name__ == '__main__':
    # Example usage
    corpus_module_opcodes = [{'i32.add': 3, 'i32.sub': 10}]
    corpus_func_opcodes = [{'i32.add': 3, 'i32.sub': 10}]
    corpus_structs = [{"[exports]": 2, "[funcs]": 4}]
    new_module_opcodes = {'i32.add': 5, 'i32.sub': 3}
    new_func_opcodes = [{'i32.add': 5, 'i32.sub': 3}]
    new_struct = {"[exports]": 2, "[funcs]": 4}
    trigram_corpus = {'abc': 1, 'def': 1}
    trigram_new = {'abc': 2, 'def': 1}

    score = score_generated_module_with_structure(corpus_module_opcodes,
                                                  corpus_func_opcodes,
                                                  corpus_structs,
                                                  new_module_opcodes,
                                                  new_func_opcodes,
                                                  new_struct,
                                                    trigram_distribution_corpus=trigram_corpus,
                                                    trigram_distribution=trigram_new)
    print(f"Similarity score: {score}")
