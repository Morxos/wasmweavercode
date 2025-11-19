# SPDX-License-Identifier: MIT
# SPDX-FileCopyrightText: 2025 Siemens AG

import subprocess
from enum import Enum
from typing import List
from wasmtime import Config, Engine, Store, Module, Func, FuncType, Instance, Memory, MemoryType, Limits, wat2wasm
from core.config.config import MEMORY_MAX_WRITE_INDEX
from core.converter import global_state_to_wat_program
from core.processor import AbstractPostProcessor
from core.state.state import GlobalState


class PerformanceMetric(Enum):
    """
    The metric that should be returned by the run_wasm function.
    """
    FUEL = 0
    ENERGY = 1
    RESPONSE_TIME = 2


class ExternalComputeResource:
    """
    The external resources that can be used.
    """

    def __init__(self, cpu_cycles: int, gpu_cycles: int):
        self.cpu_cycles = cpu_cycles
        self.gpu_cycles = gpu_cycles


class AbstractRunResult:
    """
    The result of the run_wasm function.
    """

    def __init__(self, fuel: int, ext_resources: List[ExternalComputeResource]):
        self.fuel = fuel
        self.ext_resources = ext_resources
        self.return_values = []
        self.return_types = []
        self.post_processors: List[AbstractPostProcessor] = []


def wat_to_wasm_bytes(wat_str: str) -> bytes:
    process = subprocess.Popen(
        ['wasm-tools','parse', '-'],
        stdin=subprocess.PIPE,
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE
    )

    wasm_bytes, stderr = process.communicate(input=wat_str.encode('utf-8'))

    if process.returncode != 0:
        raise RuntimeError(f"wat2wasm error: {stderr.decode('utf-8')}")

    return wasm_bytes

def run_global_state(global_state: GlobalState,
                     start_function: str = "run", sanity_check: bool = True) -> AbstractRunResult:
    """
    Runs the given global state and returns the metric. The metric can be fuel, energy or response time. If sanity
    check is true, the memory output is compared to the expected memory output.
    """
    wasm_code = global_state_to_wat_program(global_state)
    result = AbstractRunResult(0, [])
    config = Config()
    config.consume_fuel = True
    engine = Engine(config)
    store = Store(engine)
    memory = Memory(store, MemoryType(Limits(1, 1)))
    memory.write(store, global_state.memory.initial_values, 0)

    module = Module(store.engine, wasm_code)
    imports = []

    def callback_builder(function_instance):
        def function_callback_wrapper(*args):
            external_compute_resources = ExternalComputeResource(cpu_cycles=function_instance.get_cpu_complexity(*args),
                                                                 gpu_cycles=function_instance.get_gpu_complexity(*args))
            result.ext_resources.append(external_compute_resources)
            return function_instance.compute_callback(*args)

        return function_callback_wrapper

    for function in global_state.ext_functions.functions.values():
        imports.append(Func(store, FuncType([inp.get_wasmtime_type() for inp in function.inputs],
                                            [out.get_wasmtime_type() for out in function.outputs]),
                            callback_builder(function)))

    imports.append(memory)

    instance = Instance(store, module, imports)
    total_fuel = 2_000_000_000_000_000 #Some arbitrary large number
    store.set_fuel(total_fuel)
    run = instance.exports(store)[start_function]
    return_values = run(store)
    if return_values == None:
        return_values = ()
    #Check if return values are of type tuple
    if isinstance(return_values, list):
        return_values = tuple(return_values)
    if not isinstance(return_values, tuple):
        return_values = (return_values,)
    result.return_values = return_values
    if sanity_check:
        expected_memory_output = global_state.memory.memory
        initial_memory_output = global_state.memory.initial_values
        actual_memory_output = memory.read(store, 0, len(expected_memory_output))
        assert expected_memory_output == actual_memory_output, (
            f"Memory output does not match. Expected \n"
            f"Initial: {'\t'.join(format(byte) for byte in initial_memory_output[:MEMORY_MAX_WRITE_INDEX])}, \n"
            f"Expected:{'\t'.join(format(byte) for byte in expected_memory_output[:MEMORY_MAX_WRITE_INDEX])}, \n"
            f"Actual:  {'\t'.join(format(byte) for byte in actual_memory_output[:MEMORY_MAX_WRITE_INDEX])}"
        )

    result.fuel = total_fuel - store.get_fuel()
    return result


def wat_code_to_wasm(wat_code: str) -> bytearray:
    """
    Converts a WAT code string to a WASM byte string.
    """
    if not wat_code:
        raise ValueError("wat_code is empty")
    return wat2wasm(wat_code)
