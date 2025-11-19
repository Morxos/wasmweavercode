# SPDX-License-Identifier: MIT
# SPDX-FileCopyrightText: 2025 Siemens AG

from typing import List
from core.constraints import ResponseTimeConstraint, FuelConstraint, ByteCodeSizeConstraint
from core.state.functions import Function, Block
from core.state.state import GlobalState
from core.value import Val


class BranchOperation:
    """
    This class is used to represent a branch operation.
    """
    def __init__(self, target_index: int, target_name: str, return_values: List[Val]):
        self.target_index = target_index
        self.target_name = target_name
        self.return_values = return_values

global_apply_callbacks = []
global_end_callbacks = []

def wrap_apply_function(apply_func):
    def wrapped_apply(self, *args, **kwargs):
        for callback in global_apply_callbacks:
            callback(self, *args, **kwargs)
        res = apply_func(self, *args, **kwargs)
        for callback in global_end_callbacks:
            callback(self, *args, **kwargs)
        return res
    return wrapped_apply

class ApplyMeta(type):
    def __new__(cls, name, bases, attrs):
        orig_apply = attrs.get('apply', None)

        if callable(orig_apply):
            def wrapped_apply(self, *args, **kwargs):
                for callback in global_apply_callbacks:
                    callback(self, *args, **kwargs)
                res = orig_apply(self, *args, **kwargs)
                for callback in global_end_callbacks:
                    callback(self, *args, **kwargs)
                return res

            attrs['apply'] = wrapped_apply

        return super().__new__(cls, name, bases, attrs)


class AbstractTile(metaclass=ApplyMeta):
    metrics_dependent_on_input = False
    name = "AbstractTile"

    def __init__(self, seed: int):
        self.seed = seed
        self.response_time = 0.0001
        self.fuel_cost = 1
        self.byte_code_size = 1

    @staticmethod
    def can_be_placed(current_state: GlobalState, current_function: Function, current_blocks: List[Block]) -> bool:
        """
        Returns if the tile can be placed in the current state.
        """
        raise NotImplementedError

    def apply(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block])-> None | bool | BranchOperation:
        """
        Applies the tile to the current state. Returns the branch operation if there is one.
        """
        raise NotImplementedError

    def apply_constraints(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block], static_metrics=True, run_time_metrics=True) -> GlobalState:
        """
        Applies the constraints of the tile to the current state.
        """
        constraints = current_state.constraints
        for constraint in constraints.constraints:
            if isinstance(constraint, ByteCodeSizeConstraint) and static_metrics:
                constraint.update_resource(self.get_byte_code_size())
            elif isinstance(constraint, FuelConstraint) and run_time_metrics:
                constraint.update_resource(self.get_fuel_cost())
            elif isinstance(constraint, ResponseTimeConstraint) and run_time_metrics:
                constraint.update_resource(self.get_response_time())
        return current_state

    def generate_code(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]) -> str:
        """
        Returns the code that the tile represents.
        """
        raise NotImplementedError

    def get_byte_code_size(self):
        """
        Returns the byte code size of the tile.
        """
        return self.byte_code_size

    def get_fuel_cost(self):
        """
        Returns the fuel cost of the tile.
        """
        return self.fuel_cost

    def get_response_time(self):
        """
        Returns the response time of the tile.
        """
        return self.response_time


class AbstractTileFactory:
    """
    This is an abstract factory class, which allows to generate tiles dependent on the current global state. E.g. to call functions.
    """
    name: str = "AbstractTileFactory"

    def __init__(self, seed: int,tile_loader):
        self.seed = seed
        self.tile_loader = tile_loader

    def generate_all_placeable_tiles(self, global_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        """
        Generates all possible tiles.
        """
        raise NotImplementedError
