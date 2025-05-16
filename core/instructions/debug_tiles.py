from copy import deepcopy
from typing import List

import numpy as np

from core.state.functions import Function, Block
from core.state.state import GlobalState
from core.tile import AbstractTile, BranchOperation
from core.value import I32, I64, F32, F64

DISABLED = True

class ReachabilityFlagTile(AbstractTile):
    name = "ReachabilityFlagTile"

    def __init__(self, seed: int, name: str = "FLAG_1"):
        super().__init__(seed)
        self.flag_value = False
        self.flag_name = name

    @staticmethod
    def can_be_placed(current_state: GlobalState, current_function: Function, current_blocks: List[Block]) -> bool:
        raise Exception("Can be placed not supported. Should only be placed by postprocessor!")

    def apply(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]) -> None | bool | BranchOperation:
        self.flag_value = True
        return None

    def generate_code(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]) -> str:
        return f";;{self.flag_name}"

class StackInspectorTile(AbstractTile):
    name = "StackInspector"

    def __init__(self, seed: int):
        super().__init__(seed)
        self.stack_values = []

    @staticmethod
    def can_be_placed(current_state: GlobalState, current_function: Function, current_blocks: List[Block]) -> bool:
        raise Exception("Can be placed not supported. Should only be placed by postprocessor!")

    def apply(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]) -> None | bool | BranchOperation:
        for value in current_state.stack.get_current_frame().stack:
            self.stack_values.append(deepcopy(value))
        return None

    def generate_code(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]) -> str:
        return ";;INSPECT"

    def get_byte_code_size(self):
        return 0
    def get_fuel_cost(self):
        return 0
    def get_response_time(self):
        return 0

class Canary(AbstractTile):
    name = "Canary"

    @staticmethod
    def can_be_placed(current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        if len(current_state.stack.get_current_frame().stack) < 1:
            return False
        return True

    def apply(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        n = current_state.stack.get_current_frame().stack_peek()
        if isinstance(n, I32):
            current_state.canary_output.append(int(np.int32(n.value)))
        elif isinstance(n, I64):
            current_state.canary_output.append(int(np.int64(n.value)))
        elif isinstance(n, F32):
            current_state.canary_output.append(float(np.float32(n.value)))
        elif isinstance(n, F64):
            current_state.canary_output.append(float(np.float64(n.value)))

    def generate_code(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]) -> str:
        return ""

    def get_byte_code_size(self):
        return 0

    def get_fuel_cost(self):
        return 0

    def get_response_time(self):
        return 0