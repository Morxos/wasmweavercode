import os
import re
import subprocess
import tempfile
import json
from collections import Counter

import multiprocessing as mp
from typing import Dict

from core.analysis import wasm_to_wat
from core.runner import wat_to_wasm_bytes


def wat_via_file(buf):
    with tempfile.NamedTemporaryFile(delete=False, suffix=".wasm") as f:
        f.write(buf)
        name = f.name
        f.flush()
        f.close()
        result = subprocess.check_output(["wasm-tools", "print", name])
    #Remove the temporary file
    os.remove(name)
    return result.decode("utf-8")

def extract_lines(wat):
    lines = []
    for line in wat.splitlines():
        if line and not line.startswith(';'):
            white_space_count_start = len(line) - len(line.lstrip())
            #Remove leading whitespace
            line = line.lstrip()
            #Clean line
            line = line.replace(';', ' ')
            line = line.replace('(', '')
            line = line.replace(')', '')
            line_parts = line.split(" ")
            #Keep only the first word
            if line_parts:
                line = line_parts[0]
                #Add back the leading whitespace
                line = " " * white_space_count_start + line
            else:
                continue
            lines.append(line)
    return lines

def to_functions(lines):
    """Converts a wat file to a list of functions"""
    functions = []
    current_function = None
    last_white_space_count = 0
    for line in lines:
        white_space_count_start = len(line) - len(line.lstrip())
        line = line.strip()
        if line.startswith('func'):
            if current_function:
                functions.append(current_function)
            current_function = []
        elif last_white_space_count > white_space_count_start and white_space_count_start == 2:
            if current_function:
                functions.append(current_function)
                current_function = None
        elif current_function is not None:
            #Remove leading whitespace
            line = line.lstrip()
            current_function.append(line)
        last_white_space_count = white_space_count_start
    return functions

def build_trigrams(functions):
    """Builds a trigram model from the functions"""
    trigrams = {}
    for function in functions:
        for i in range(len(function) - 2):
            if function[i] in ['local', 'param', 'result'] or function[i+1] in ['local', 'param', 'result'] or function[i+2] in ['local', 'param', 'result']:
                continue
            trigram = (function[i], function[i + 1], function[i + 2])
            if trigram not in trigrams:
                trigrams[trigram] = 0
            trigrams[trigram] += 1
    return trigrams

def wat_to_trigrams(wat)->Dict[str, int]:
    """Converts a wat file to a trigram model"""
    lines = extract_lines(wat)
    functions = to_functions(lines)
    trigrams = build_trigrams(functions)

    #Convert tuples to strings
    trigrams = {f"{k[0]} {k[1]} {k[2]}": v for k, v in trigrams.items()}
    #Calculate relative frequencies
    return trigrams

def file_to_trigrams(file_path):
    """Converts a file to a trigram model"""
    if file_path.endswith(".wat"):
        with open(file_path, "r") as f:
            wat = f.read()
            wasm = wat_to_wasm_bytes(wat)

    else:
        with open(file_path, "rb") as f:
            wasm = f.read()
    #If file larger then 100kb, skip it
    if len(wasm) > 1000 * 1024:
        print(f"Skipping {file_path} (too large)")
        return {}
    try:
            #Convert wasm to wat
        wat = wat_via_file(wasm)
    except subprocess.CalledProcessError:
        print("Error converting wasm to wat")
        return {}

    lines = extract_lines(wat)

    functions = to_functions(lines)
    trigrams = build_trigrams(functions)
    return trigrams


def generate_corpus_trigrams(directory_path: str, n_proc: int | None = None) -> Counter:
    wasm_files = [os.path.join(directory_path, f)
                  for f in os.listdir(directory_path) if f.endswith(".wasm") or f.endswith(".wat")]

    print(f"Processing {len(wasm_files)} modules on {n_proc or mp.cpu_count()} cores")

    with mp.Pool(n_proc) as pool:
        counters = pool.imap_unordered(file_to_trigrams, wasm_files, chunksize=8)
        corpus_counter = Counter()
        for i, cnt in enumerate(counters, 1):
            corpus_counter.update(cnt)
            if i % 100 == 0:
                print(f"  done {i}/{len(wasm_files)} files")

    return corpus_counter


if __name__ == "__main__":
    path       = "4_alignment_samples"
    output_dir = "wasmbench/wasmweaver/"
    tri_counter = generate_corpus_trigrams(path)        # use all cores

    # sort & dump
    tri_sorted = dict(tri_counter.most_common())
    #Convert tuples to strings
    tri_sorted = {f"{k[0]} {k[1]} {k[2]}": v for k, v in tri_sorted.items()}
    #Calculate relative frequencies
    total = sum(tri_sorted.values())
    with open(os.path.join(output_dir, "trigrams.json"), "w") as f:
        output_dict = {
            "trigrams": tri_sorted,
            "total": total
        }
        json.dump(output_dict, f, indent=2)
    print(f"saved {len(tri_sorted)} trigrams → {output_dir}/trigrams.json")

