import json

import matplotlib.pyplot as plt
import numpy as np


def plot_module_total_byte_distribution():
    module_corpus = json.load(open("wasmbench/module_corpus.json"))
    #print(module_corpus[0].keys())

    plt.figure(figsize=(5, 4))
    plt.hist([module["[binary-bytes]"] for module in module_corpus], bins=100, color='blue', alpha=0.7)
    plt.title("Distribution of Total Bytes in Modules")
    plt.xlabel("Total Bytes")
    plt.ylabel("Frequency")
    plt.grid(axis='y', alpha=0.75)
    plt.savefig("wasmbench/visualization/module_total_byte_distribution.pdf")
    plt.show()

def plot_functions_total_byte_distribution():
    function_corpus = json.load(open("wasmbench/function_corpus.json"))
    #print(function_corpus[0].keys())

    plt.figure(figsize=(5, 4))
    #Only plot 99th percentile
    plt.hist([function["[binary-bytes]"] for function in function_corpus if function["[total]"] < 500], bins=100, color='blue', alpha=0.7)
    plt.title("Distribution of Total Bytes in Functions")
    plt.xlabel("Total Bytes")
    plt.ylabel("Frequency")
    plt.grid(axis='y', alpha=0.75)
    plt.savefig("wasmbench/visualization/functions_total_byte_distribution.pdf")
    plt.show()

def plot_functions_total_opcode_distribution():
    function_corpus = json.load(open("wasmbench/function_corpus.json"))
    #print(function_corpus[0].keys())
    print("Total functions:", len(function_corpus))
    plt.figure(figsize=(3, 2))
    #Only plot most of the data
    selected_functions = [function["[total]"] for function in function_corpus if function["[total]"]]
    #Plot median
    median = np.median(selected_functions)
    mean = np.mean(selected_functions)
    #print("Median:", median)
    #Plot median
    plt.axvline(median, color='red', linestyle='dashed', linewidth=1)
    plt.text(median + 5, 75000, f'Median: {int(median)}', color='red')
    #Plot mean rounded to 2 decimal places
    plt.axvline(mean, color='green', linestyle='dashed', linewidth=1)
    plt.text(mean + 5, 50000, f'Mean: {mean:.2f}', color='green')
    plt.hist(selected_functions, bins=50, color='blue', alpha=0.7, range=(0, 550))
    #Draw
    plt.xlabel("Total Opcodes")
    plt.ylabel("Frequency")
    plt.tight_layout(pad=0)
    plt.xlim(0, 550)
    plt.grid(axis='y', alpha=0.75)
    plt.savefig("wasmbench/visualization/functions_total_byte_distribution.pdf")
    plt.show()

def plot_modules_total_opcode_distribution():
    module_corpus = json.load(open("wasmbench/module_corpus.json"))
    #print(module_corpus[0].keys())
    print("Total modules:", len(module_corpus))
    plt.figure(figsize=(3, 2))
    #Only plot most of the data
    selected_modules = [module["[total]"] for module in module_corpus if module["[total]"]]
    #Plot median
    median = np.median(selected_modules)
    mean = np.mean(selected_modules)
    #print("Median:", median)
    #Plot median
    plt.axvline(median, color='red', linestyle='dashed', linewidth=1)
    plt.text(median + 1000, 750, f'Median: {int(median)}', color='red')
    #Plot mean rounded to 2 decimal places
    plt.axvline(mean, color='green', linestyle='dashed', linewidth=1)
    plt.text(mean + 1000, 500, f'Mean: {mean:.2f}', color='green')
    plt.hist(selected_modules, bins=50, color='blue', alpha=0.7, range=(0, 50000))
    #Draw
    plt.xlabel("Total Opcodes")
    plt.ylabel("Frequency")
    plt.tight_layout(pad=0)
    plt.grid(axis='y', alpha=0.75)
    plt.savefig("wasmbench/visualization/modules_total_byte_distribution.pdf")
    plt.show()

def plot_trigram_distribution():
    trigram_corpus = json.load(open("wasmbench/trigrams.json"))
    trigrams = trigram_corpus["trigrams"]
    #Keys are label and value are the number it appears. We want only to plot the 20 most common

    #Sort by value
    sorted_trigrams = dict(sorted(trigrams.items(), key=lambda item: item[1], reverse=True))
    #Get the 20 most common
    sorted_trigrams = dict(list(sorted_trigrams.items())[:20])
    #Compute relative frequency in percentage
    total_count = sum(sorted_trigrams.values())
    for key, value in sorted_trigrams.items():
        sorted_trigrams[key] = (value / total_count) * 100


    #Modify keys to be more readable
    # Format keys
    sorted_trigrams = {"(" + key.replace(" ", ", ") + ")": value for key, value in sorted_trigrams.items()}

    # Make sure keys are aligned and consistent
    keys = list(sorted_trigrams.keys())
    values1 = [sorted_trigrams[key] for key in keys]



    # Plot
    plt.figure(figsize=(5, 4))
    plt.bar(keys,values1, color='blue', alpha=0.7)
    plt.ylabel("Relative Trigram Frequency (%)")
    plt.xticks(rotation=90)
    #Set xtick font size
    plt.xticks(fontsize=8)
    plt.grid(axis='y', alpha=0.75)
    plt.tight_layout(pad=0)

    # Save and show
    plt.savefig("wasmbench/visualization/trigram_distribution.pdf")
    plt.show()

def plot_module_byte_code_distribution():
    byte_code_classes = {}
    total_byte_counts = []
    total_byte_counts_wasm_weaver = []
    byte_code_classes_wasm_weaver = {}
    module_corpus = json.load(open("wasmbench/module_corpus.json"))
    module_corpus_wasmweaver = json.load(open("wasmbench/module_corpus.json"))
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
    #print("Byte code classes:", byte_code_classes)

    for module in module_corpus_wasmweaver:

        total_byte_count = 0
        for key, value in module.items():
            if key.startswith("[") and key.endswith("]"):
                continue
            if key not in byte_code_classes_wasm_weaver:
                byte_code_classes_wasm_weaver[key] = []
            byte_code_classes_wasm_weaver[key].append(value)
            total_byte_count += value
        total_byte_counts_wasm_weaver.append(total_byte_count)

    print("Total not empty modules:", total_byte_counts)

    #Remove all empty modules
    for i in range(len(total_byte_counts)):
        if total_byte_counts[i] == 0:
            del total_byte_counts[i]
            for key, value in byte_code_classes.items():
                del byte_code_classes[key][i]
            break

    #Remove all empty modules wasmweaver

    for i in range(len(total_byte_counts_wasm_weaver)):
        if total_byte_counts_wasm_weaver[i] == 0:
            del total_byte_counts_wasm_weaver[i]
            for key, value in byte_code_classes_wasm_weaver.items():
                del byte_code_classes_wasm_weaver[key][i]
            break

    #Plot in percentage, descending order
    for i in range(len(total_byte_counts)):
        for key, value in byte_code_classes.items():
            byte_code_classes[key][i] = (value[i] / total_byte_counts[i]) * 100

    #for i in range(len(total_byte_counts_wasm_weaver)):
    #    for key, value in byte_code_classes_wasm_weaver.items():
    #        byte_code_classes_wasm_weaver[key][i] = (value[i] / total_byte_counts_wasm_weaver[i]) * 100

    #Sort by median
    byte_code_classes = dict(sorted(byte_code_classes.items(), key=lambda item: (np.median(item[1])), reverse=True))
    # Keep first 10 and accumulate the rest
    accumulated = 0
    for key, value in list(byte_code_classes.items())[400:]:
        accumulated += np.median(value)
        del byte_code_classes[key]

    #Align the wasm weaver keys with the wasm bench ones
    #ordered_wasm_weaver_values = []
    #for key in byte_code_classes.keys():
    #    if key in byte_code_classes_wasm_weaver:
    #        ordered_wasm_weaver_values.append(byte_code_classes_wasm_weaver[key])
    #    else:
    #        ordered_wasm_weaver_values.append([0] * len(total_byte_counts_wasm_weaver))


    plt.figure(figsize=(15, 5))
    #Use box plots
    plt.boxplot(list(byte_code_classes.values()), labels=list(byte_code_classes.keys()), showfliers=False)
    #Plot wasm weaver
    #plt.boxplot(ordered_wasm_weaver_values, labels=list(byte_code_classes.keys()), showfliers=False, positions=np.arange(len(byte_code_classes.keys())) + 0.5)
    #plt.xlabel("Byte Code Classes")
    plt.ylabel("Frequency (%)")
    plt.xticks(rotation=45)
    plt.grid(axis='y', alpha=0.75)
    plt.tight_layout(pad=0)
    plt.savefig("wasmbench/visualization/module_byte_code_distribution.pdf")
    plt.show()


def plot_module_byte_code_distribution_absolute():
    byte_code_classes = {}
    total_byte_counts = []
    total_byte_counts_wasm_weaver = []
    byte_code_classes_wasm_weaver = {}
    total_byte_counts_wasm_smith = []
    byte_code_classes_wasm_smith = {}


    module_corpus = json.load(open("wasmbench/module_corpus.json"))
    module_corpus_wasmweaver = json.load(open("wasmbench/wasmweaver/module_corpus.json"))
    module_corpus_wasm_smith = json.load(open("wasm_smith/module_corpus.json"))
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

    for module in module_corpus_wasmweaver:

        total_byte_count = 0
        for key, value in module.items():
            if key.startswith("[") and key.endswith("]"):
                continue
            if key not in byte_code_classes_wasm_weaver:
                byte_code_classes_wasm_weaver[key] = []
            byte_code_classes_wasm_weaver[key].append(value)
            total_byte_count += value
        total_byte_counts_wasm_weaver.append(total_byte_count)

    for module in module_corpus_wasm_smith:
        total_byte_count = 0
        for key, value in module.items():
            if key.startswith("[") and key.endswith("]"):
                continue
            if key not in byte_code_classes_wasm_smith:
                byte_code_classes_wasm_smith[key] = []
            byte_code_classes_wasm_smith[key].append(value)
            total_byte_count += value
        total_byte_counts_wasm_smith.append(total_byte_count)


    while True:
        found = False
        #Remove all empty modules
        for i in range(len(total_byte_counts)):
            if total_byte_counts[i] == 0:
                del total_byte_counts[i]
                for key, value in byte_code_classes.items():
                    del byte_code_classes[key][i]
                found = True
                break

        #Remove all empty modules wasmweaver

        for i in range(len(total_byte_counts_wasm_weaver)):
            if total_byte_counts_wasm_weaver[i] == 0:
                del total_byte_counts_wasm_weaver[i]
                for key, value in byte_code_classes_wasm_weaver.items():
                    del byte_code_classes_wasm_weaver[key][i]
                found = True
                break

        for i in range(len(total_byte_counts_wasm_smith)):
            if total_byte_counts_wasm_smith[i] == 0:
                del total_byte_counts_wasm_smith[i]
                for key, value in byte_code_classes_wasm_smith.items():
                    del byte_code_classes_wasm_smith[key][i]
                found = True
                break

        if not found:
            break


    #Plot in percentage, descending order
    for i in range(len(total_byte_counts)):
        for key, value in byte_code_classes.items():
            byte_code_classes[key][i] = (value[i] / total_byte_counts[i]) * 100

    for i in range(len(total_byte_counts_wasm_weaver)):
        for key, value in byte_code_classes_wasm_weaver.items():
            byte_code_classes_wasm_weaver[key][i] = (value[i] / total_byte_counts_wasm_weaver[i]) * 100

    for i in range(len(total_byte_counts_wasm_smith)):
        for key, value in byte_code_classes_wasm_smith.items():
            print(total_byte_counts_wasm_smith[i])
            byte_code_classes_wasm_smith[key][i] = (value[i] / total_byte_counts_wasm_smith[i]) * 100

    #Compute mean of each class

    for key, value in byte_code_classes.items():
        byte_code_classes[key] = np.mean(value)

    for key, value in byte_code_classes_wasm_weaver.items():
        byte_code_classes_wasm_weaver[key] = np.mean(value)

    for key, value in byte_code_classes_wasm_smith.items():
        byte_code_classes_wasm_smith[key] = np.mean(value)

    #Sort by mean
    byte_code_classes = dict(sorted(byte_code_classes.items(), key=lambda item: (item[1]), reverse=True))
    wasm_weaver_values = []
    wasm_smith_values = []
    #Align the wasm weaver keys with the wasm bench ones
    for key in byte_code_classes.keys():
        if key in byte_code_classes_wasm_weaver:
            wasm_weaver_values.append(byte_code_classes_wasm_weaver[key])
        else:
            wasm_weaver_values.append(0)

        if key in byte_code_classes_wasm_smith:
            wasm_smith_values.append(byte_code_classes_wasm_smith[key])
        else:
            wasm_smith_values.append(0)



    #Only take top 15
    byte_code_classes = dict(list(byte_code_classes.items())[:15])
    wasm_weaver_values = wasm_weaver_values[:15]
    wasm_smith_values = wasm_smith_values[:15]

    width = 0.25

    plt.figure(figsize=(5, 3))
    #Use bar plots. always on key and all three values
    # Sample dictionary keys and values
    labels = list(byte_code_classes.keys())
    wasm_bench_values = list(byte_code_classes.values())

    x = np.arange(len(labels))  # the label locations
    width = 0.25  # the width of the bars

    plt.bar(x - width, wasm_bench_values, width=width, color='blue', alpha=0.7, label='WasmBench (Reference)')
    plt.bar(x, wasm_weaver_values, width=width, color='green', alpha=0.7, label='WasmWeaver')
    plt.bar(x + width, wasm_smith_values, width=width, color='orange', alpha=0.7, label='wasm-smith')
    #plt.xlabel("Byte Code Classes")
    plt.ylabel("Frequency (%)")
    plt.xticks(x, labels)  # Set the x-axis tick labels to your original keys
    plt.xticks(rotation=45)
    plt.grid(axis='y', alpha=0.75)
    plt.tight_layout(pad=0)
    plt.legend()
    plt.savefig("wasmbench/visualization/module_byte_code_distribution_after_aligning.pdf")

    plt.show()

def plot_functions_byte_code_distribution():
    byte_code_classes = {}
    total_byte_counts = []
    function_corpus = json.load(open("wasmbench/function_corpus.json"))
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
    #("Byte code classes:", byte_code_classes)

    #Plot in percentage, descending order
    for i in range(len(total_byte_counts)):
        for key, value in byte_code_classes.items():
            byte_code_classes[key][i] = (value[i] / total_byte_counts[i]) * 100


    #Sort by median
    byte_code_classes = dict(sorted(byte_code_classes.items(), key=lambda item: (np.median(item[1])), reverse=True))
    #Keep first 10 and accumulate the rest
    accumulated = 0
    for key, value in list(byte_code_classes.items())[15:]:
        accumulated += np.median(value)
        del byte_code_classes[key]

    #byte_code_classes["Other"] = [accumulated] * len(total_byte_counts)


    plt.figure(figsize=(3, 2))
    #Use box plots
    plt.boxplot(list(byte_code_classes.values()), labels=list(byte_code_classes.keys()), showfliers=False)
    #plt.xlabel("Byte Code Classes")
    plt.ylabel("Frequency (%)")
    plt.xticks(rotation=90)
    #Set x fontsize
    plt.grid(axis='y', alpha=0.75)
    plt.tight_layout(pad=0)
    plt.savefig("wasmbench/visualization/functions_byte_code_distribution.pdf")
    plt.show()


def main():
    #plot_module_total_byte_distribution()
    #plot_functions_total_byte_distribution()
    plot_module_byte_code_distribution()
    #plot_functions_byte_code_distribution()
    #plot_functions_total_opcode_distribution()
    #plot_modules_total_opcode_distribution()
    #plot_trigram_distribution()
    #plot_module_byte_code_distribution_absolute()



if __name__ == "__main__":
    main()