#!/usr/bin/env python3
import os
import json
import multiprocessing as mp
from functools import partial
from pathlib import Path

from core.analysis import (
    get_module_statistics,
    get_function_statistics,
    add_dict_to_corpus, wasm_to_wat,
)

# --------------------------------------------------------------------------- #
# Worker runs in a separate process
# --------------------------------------------------------------------------- #
def analyse_file(filename: str, wasm_dir: str, max_bytes: int):
    """
    Return (module_stats, [function_stats, …]) for one .wasm file,
    or None if the file should be skipped.
    """
    if not filename.endswith(".wasm"):
        return None

    path = Path(wasm_dir) / filename
    try:
        if path.stat().st_size > max_bytes:
            print(f"[worker] Skipping {filename}: larger than {max_bytes} bytes")
            return None

        with path.open("rb") as fh:
            wasm_code = fh.read()
        wasm_code = wasm_to_wat(wasm_code)
        module_stats   = get_module_statistics(wasm_code)
        function_stats = get_function_statistics(wasm_code)
        return module_stats, function_stats

    except Exception as exc:
        # Keep worker silent except for diagnostics; never crash the pool
        print(f"[worker] Error in {filename}: {exc!r}")
        return None


# --------------------------------------------------------------------------- #
# Main — runs in the parent process
# --------------------------------------------------------------------------- #
def main():
    wasm_directory     = "wasmbench/filtered"
    max_file_size_bytes = 100 * 1024        # 100 KB

    file_list        = os.listdir(wasm_directory)
    total_file_count = len(file_list)

    module_corpus   = []
    module_corpus_relative_opcodes = []
    module_corpus_structural_counts = []
    function_corpus = []
    function_corpus_relative_opcodes = []
    function_corpus_structural_counts = []

    # Create a process pool; default size = #CPU cores
    with mp.Pool() as pool:
        worker_fn = partial(
            analyse_file,
            wasm_dir=wasm_directory,
            max_bytes=max_file_size_bytes,
        )

        # imap_unordered streams results back as soon as each worker finishes
        for idx, result in enumerate(
            pool.imap_unordered(worker_fn, file_list), start=1
        ):
            print(f"[main] Processed {idx}/{total_file_count}")

            if result is None:
                continue

            module_stats, function_stats = result
            add_dict_to_corpus(module_corpus, module_stats)

            module_relative_opcodes = {}
            module_structural_counts = {}
            for key, value in module_stats.items():
                if key.startswith("[") and key.endswith("]"):
                    continue
                module_relative_opcodes[key] = value

            add_dict_to_corpus(module_corpus_relative_opcodes, module_relative_opcodes)
            for key, value in module_stats.items():
                if key.startswith("[") and key.endswith("]"):
                    module_structural_counts[key] = value
                else:
                    continue

            add_dict_to_corpus(module_corpus_structural_counts, module_structural_counts)
            # Process function statistics

            for fn_stats in function_stats:
                add_dict_to_corpus(function_corpus, fn_stats)
                function_relative_opcodes = {}
                function_structural_counts = {}
                for key, value in fn_stats.items():
                    if key.startswith("[") and key.endswith("]"):
                        continue
                    function_relative_opcodes[key] = value
                add_dict_to_corpus(function_corpus_relative_opcodes, function_relative_opcodes)
                for key, value in fn_stats.items():
                    if key.startswith("[") and key.endswith("]"):
                        function_structural_counts[key] = value
                    else:
                        continue
                add_dict_to_corpus(function_corpus_structural_counts, function_structural_counts)

    # ------------------------------------------------------------------- #
    # Persist the corpora as JSON for later analysis
    # ------------------------------------------------------------------- #
    out_dir = Path("wasmbench")
    out_dir.mkdir(exist_ok=True)

    (out_dir / "module_corpus.json").write_text(json.dumps(module_corpus))
    (out_dir / "function_corpus.json").write_text(json.dumps(function_corpus))
    (out_dir / "module_corpus_opcodes.json").write_text(json.dumps(module_corpus_relative_opcodes))
    (out_dir / "function_corpus_opcodes.json").write_text(json.dumps(function_corpus_relative_opcodes))
    (out_dir / "module_corpus_structural_counts.json").write_text(json.dumps(module_corpus_structural_counts))
    (out_dir / "function_corpus_structural_counts.json").write_text(json.dumps(function_corpus_structural_counts))

    print("[main] Saved corpora:",
          f"modules={len(module_corpus)}, functions={len(function_corpus)}")


if __name__ == "__main__":
    # On Windows the "spawn" start‑method is mandatory for pools.
    mp.freeze_support()
    main()
