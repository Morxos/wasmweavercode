import json

import matplotlib.pyplot as plt
import numpy as np


def plot_module_total_byte_distribution():
    module_corpus = json.load(open("wasm_smith/module_corpus.json"))
    print(module_corpus[0].keys())

    plt.figure(figsize=(5, 4))
    plt.hist([module["[binary-bytes]"] for module in module_corpus], bins=100, color='blue', alpha=0.7)
    plt.title("Distribution of Total Bytes in Modules")
    plt.xlabel("Total Bytes")
    plt.ylabel("Frequency")
    plt.grid(axis='y', alpha=0.75)
    plt.savefig("wasm_smith/visualization/module_total_byte_distribution.png")
    plt.show()

def plot_functions_total_byte_distribution():
    function_corpus = json.load(open("wasm_smith/function_corpus.json"))
    print(function_corpus[0].keys())

    plt.figure(figsize=(5, 4))
    #Only plot 99th percentile
    plt.hist([function["[binary-bytes]"] for function in function_corpus if function["[total]"] < 500], bins=100, color='blue', alpha=0.7)
    plt.title("Distribution of Total Bytes in Functions")
    plt.xlabel("Total Bytes")
    plt.ylabel("Frequency")
    plt.grid(axis='y', alpha=0.75)
    plt.savefig("wasm_smith/visualization/functions_total_byte_distribution.png")
    plt.show()

def plot_module_byte_code_distribution():
    byte_code_classes = {}
    total_byte_counts = []
    module_corpus = json.load(open("wasm_smith/module_corpus.json"))
    for module in module_corpus:
        total_byte_count = 0
        for key, value in module.items():
            if key.startswith("[") and key.endswith("]"):
                continue
            if key not in byte_code_classes:
                byte_code_classes[key] = []
            byte_code_classes[key].append(value)
            total_byte_count += value
        total_byte_counts.append(total_byte_count)
    print("Byte code classes:", byte_code_classes)

    #Plot in percentage, descending order
    for i in range(len(total_byte_counts)):
        for key, value in byte_code_classes.items():
            byte_code_classes[key][i] = (value[i] / max(1,total_byte_counts[i])) * 100

    #Sort by median
    byte_code_classes = dict(sorted(byte_code_classes.items(), key=lambda item: (np.median(item[1])), reverse=True))
    #Sort by median

    plt.figure(figsize=(5, 4))
    #Use box plots
    plt.boxplot(list(byte_code_classes.values()), labels=list(byte_code_classes.keys()), showfliers=False)
    plt.title("Distribution of Byte Code Classes")
    plt.xlabel("Byte Code Classes")
    plt.ylabel("Percentage")
    plt.xticks(rotation=90)
    plt.grid(axis='y', alpha=0.75)
    plt.tight_layout()
    plt.savefig("wasm_smith/visualization/module_byte_code_distribution.png")
    plt.show()

def plot_functions_byte_code_distribution():
    byte_code_classes = {}
    total_byte_counts = []
    function_corpus = json.load(open("wasm_smith/function_corpus.json"))
    for function in function_corpus:
        total_byte_count = 0
        for key, value in function.items():
            if key.startswith("[") and key.endswith("]"):
                continue
            if key not in byte_code_classes:
                byte_code_classes[key] = []
            byte_code_classes[key].append(value)
            total_byte_count += value
        total_byte_counts.append(total_byte_count)
    print("Byte code classes:", byte_code_classes)

    #Plot in percentage, descending order
    for i in range(len(total_byte_counts)):
        for key, value in byte_code_classes.items():
            byte_code_classes[key][i] = (value[i] / total_byte_counts[i]) * 100

    #Sort by median
    byte_code_classes = dict(sorted(byte_code_classes.items(), key=lambda item: (np.median(item[1])), reverse=True))
    #Sort by median

    plt.figure(figsize=(5, 4))
    #Use box plots
    plt.boxplot(list(byte_code_classes.values()), labels=list(byte_code_classes.keys()), showfliers=False)
    plt.title("Distribution of Byte Code Classes")
    plt.xlabel("Byte Code Classes")
    plt.ylabel("Percentage")
    plt.xticks(rotation=90)
    plt.grid(axis='y', alpha=0.75)
    plt.tight_layout()
    plt.savefig("wasm_smith/visualization/functions_byte_code_distribution.png")
    plt.show()


def main():
    #plot_module_total_byte_distribution()
    #plot_functions_total_byte_distribution()
    plot_module_byte_code_distribution()
    plot_functions_byte_code_distribution()



if __name__ == "__main__":
    main()