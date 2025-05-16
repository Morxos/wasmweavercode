import os

import numpy as np
import wasmtime
from wasmtime import Config, Engine, Store, Memory, MemoryType, Limits, Module, Instance

from core.runner import AbstractRunResult, wat_to_wasm_bytes

folder_name = "1_stack_effect_samples"

binary_sizes = []
fuel_counts = []

#get all wat files
for i, f in enumerate(os.listdir(folder_name)):
    if f.endswith(".wat"):
        print("Reading file", f, f"({i})")

        with open(os.path.join(folder_name, f), "r") as file:
            wat_code = file.read()
    else:
        continue


    config = Config()
    config.consume_fuel = True
    engine = Engine(config)
    store = Store(engine)
    memory = Memory(store, MemoryType(Limits(1, 1)))
    module = Module(store.engine, wat_code)
    imports = []
    imports.append(memory)
    instance = Instance(store, module, imports)
    total_fuel = 2_000_000_000
    store.set_fuel(total_fuel)
    run = instance.exports(store)["run"]
    return_values = run(store)
    fuel_counts.append(total_fuel-store.get_fuel())
    binary_sizes.append(len(wat_to_wasm_bytes(wat_code)))

#Print average fuel count and std deviation
average_fuel_count = sum(fuel_counts)/len(fuel_counts)
std_fuel_count = np.std(fuel_counts)
print("Average fuel count:", average_fuel_count)
print("Standard deviation fuel count:", std_fuel_count)
print("Max fuel count:", max(fuel_counts))
print("Min fuel count:", min(fuel_counts))
#Print average binary size and std deviation
average_binary_size = sum(binary_sizes)/len(binary_sizes)
std_binary_size = np.std(binary_sizes)
print("Average binary size:", average_binary_size)
print("Standard deviation binary size:", std_binary_size)
print("Max binary size:", max(binary_sizes))
print("Min binary size:", min(binary_sizes))