import json
import math
from typing import List, Dict

from wasmtime import wat2wasm

from core.analysis import js_distance_sample_vs_corpus, get_module_statistics, \
    get_function_statistics, extract_op_code_counts_from_dicts, extract_structural_counts_from_dicts, overall_zscore
from core.extractor import wat_to_trigrams
from core.metrics import score_generated_module_with_structure


class ProgramCorpus:

    def __init__(self, path="wasmbench"):
        self.module_scalars_corpus = []
        self.module_relative_scalars_corpus = []
        self.module_opcode_corpus = []
        self.functions_scalars_corpus = []
        self.functions_relative_scalars_corpus = []
        self.functions_opcode_corpus = []
        self.trigram_distribution_corpus = {}
        self.opcode_corpus_size = 0
        self.path = path
        self.load_corpus()

    def scalar_ratios(self, counts: Dict[str, int]) -> Dict[str, float]:
        """Derive scale‑invariant ratios from wasm‑opt header scalars."""
        tot = counts.get('[binary-bytes]', 0) or 1
        return {k: v / tot for k, v in counts.items() if k != '[binary-bytes]'}


    def load_corpus(self):
        """Load the corpus from the given path."""
        self.module_scalars_corpus = json.load(open(self.path + "/module_corpus_structural_counts.json"))
        self.module_opcode_corpus = json.load(open(self.path + "/module_corpus_opcodes.json"))
        self.functions_scalars_corpus = json.load(open(self.path + "/function_corpus_structural_counts.json"))
        self.functions_opcode_corpus = json.load(open(self.path + "/function_corpus_opcodes.json"))
        # Load the relative trigram distribution
        with open(self.path + "/trigrams.json", "r") as f:
            self.trigram_distribution_corpus = json.load(f)["trigrams"]
        self.module_relative_scalars_corpus = [self.scalar_ratios(counts) for counts in self.module_scalars_corpus]
        self.functions_relative_scalars_corpus = [self.scalar_ratios(counts) for counts in self.functions_scalars_corpus]
        print("Loaded module scalars corpus with size", len(self.module_scalars_corpus))
        print("Loaded function scalars corpus with size", len(self.functions_scalars_corpus))
        print("Loaded module opcode corpus with size", len(self.module_opcode_corpus))
        print("Loaded function opcode corpus with size", len(self.functions_opcode_corpus))

    def get_module_opcode_distance(self, sample: List[Dict[str,int]]):
        return js_distance_sample_vs_corpus(sample, self.module_opcode_corpus)

    def get_function_opcode_distance(self, sample: List[Dict[str,int]]):
        return js_distance_sample_vs_corpus(sample, self.functions_opcode_corpus)

    def get_scalar_rms_score_module(self, samples: List[Dict[str,int]]):
        normalized_samples = []
        for i in range(len(samples)):
            normalized_samples.append(self.scalar_ratios(samples[i]))
        return overall_zscore(self.module_relative_scalars_corpus, normalized_samples)

    def get_scalar_rms_score_functions(self, samples: List[Dict[str,int]]):
        normalized_samples = []
        for i in range(len(samples)):
            normalized_samples.append(self.scalar_ratios(samples[i]))
        return overall_zscore(self.functions_relative_scalars_corpus, normalized_samples)

    def get_similarity(self, wat_code: str)->float:
        """Get the distance of the given wasm code to the corpus."""
        module_stats = [get_module_statistics(wat_code)]
        function_stats = get_function_statistics(wat_code)
        module_opcodes = extract_op_code_counts_from_dicts(module_stats)
        module_scalars = extract_structural_counts_from_dicts(module_stats)
        function_opcodes = extract_op_code_counts_from_dicts(function_stats)
        relative_trigram_distribution = wat_to_trigrams(wat_code)
        return score_generated_module_with_structure(self.module_opcode_corpus,
                                                     self.functions_opcode_corpus,
                                                     self.module_opcode_corpus,
                                                     module_opcodes[0],
                                                     function_opcodes,
                                                     module_scalars[0],
                                                     self.trigram_distribution_corpus,
                                                     relative_trigram_distribution)



if __name__ == "__main__":
    program_corpus = ProgramCorpus()
    with open("test.wat", "r") as f:
        wat_code = f.read()
    similarity = program_corpus.get_similarity(wat_code)
    print("Similarity", similarity)