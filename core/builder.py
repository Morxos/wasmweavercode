# SPDX-License-Identifier: MIT
# SPDX-FileCopyrightText: 2025 Siemens AG

import random
from typing import Generator, Any, List, Type
from config.config import MEMORY_MAX_WRITE_INDEX
from core.constraints import ByteCodeSizeConstraint, FuelConstraint, ConstraintsViolatedError
from core.converter import global_state_to_wat_program
from core.debug.debugger import print_trace
from core.formater import add_line_numbers_to_code
from core.loader import TileLoader
from core.runner import run_global_state, wat_code_to_wasm, AbstractRunResult
from core.state.stack import StackOverflowError, StackValueError
from core.state.state import GlobalState
from core.strategy import AbstractSelectionStrategy
from core.util import generate_function, apply_function
from core.value import Val

random.seed(0)
tile_loader = TileLoader("core/instructions/")


class GeneratorResult:
    """
    Represents the result of a code generation attempt, including metadata.
    """
    def __init__(self, seed: int, code_str: str, byte_code: bytearray, run_result: AbstractRunResult,
                 initial_memory: bytearray, canary_output=None):
        if canary_output is None:
            canary_output = []
        self.seed = seed
        self.code_str = code_str
        self.byte_code = byte_code
        self.initial_memory = initial_memory
        self.abstract_run_result = run_result
        self.canary_output = canary_output

    def __dict__(self):
        return {
            "seed": self.seed,
            "code_str": self.code_str,
            "byte_code": self.byte_code,
            "initial_memory": self.initial_memory,
            "abstract_run_result": self.abstract_run_result.__dict__,
            "canary_output": self.canary_output
        }

def generate_code(start_seed: int, min_byte_code_size: int = 20, max_byte_code_size: int = 512, min_fuel: int = 0,
                  max_fuel: int = 2000, verbose: bool = False, selection_strategy: AbstractSelectionStrategy = None,
                  input_types: List[Type[Val]] = None, output_types: List[Type[Val]] = None) -> \
Generator[GeneratorResult, Any, None]:
    """
    Generator that yields generated code snippets along with their metadata.
    Each generated code snippet adheres to the specified constraints on bytecode size and fuel consumption.
    """

    if input_types is None:
        input_types = []

    if output_types is None:
        output_types = []

    while True:
        start_seed = start_seed + 1
        if verbose:
            print(f"Seed: {start_seed}")
        try:
            random.seed(start_seed)
            global_state = GlobalState()
            global_state.constraints.add(ByteCodeSizeConstraint(min_byte_code_size, max_byte_code_size))
            global_state.constraints.add(FuelConstraint(min_fuel, max_fuel))
            global_state.stack.push_frame(params=None, stack=[], name="origin")
            f=generate_function(tile_loader, "run", input_types, global_state, selection_strategy=selection_strategy,
                              is_entry=True, fixed_output_types=output_types)

            global_state.memory.reinit_memory()
            code_str = global_state_to_wat_program(global_state)
            print(code_str)
            apply_function(global_state.functions.get("run"),global_state)
            print(global_state.memory)

            if verbose:
                print(code_str)
                print(add_line_numbers_to_code(code_str))
            try:
                result = run_global_state(global_state)
            except Exception as e:
                print(f"Error: {e}")
                global_state.memory.memory = bytearray(global_state.memory.initial_values[:MEMORY_MAX_WRITE_INDEX])
                print_trace(global_state, entry_function="run", start_seed=start_seed)
                raise e
            byte_code = wat_code_to_wasm(code_str)
            if verbose:
                print(f"Fuel consumption: {result}")
                print(f"Byte code size: {len(byte_code)}")



            canary_output = global_state.canary_output

            yield GeneratorResult(start_seed, code_str, byte_code, result,
                                  global_state.memory.initial_values[:MEMORY_MAX_WRITE_INDEX], canary_output)
        except (ConstraintsViolatedError, StackOverflowError, StackValueError):
            if verbose:
                print("Constraints violated")
            continue

