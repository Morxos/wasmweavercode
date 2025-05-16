import copy
from typing import TypeVar, List, Literal, TYPE_CHECKING, Tuple

from core.constraints import Constraints
from core.state.functions import Functions
from core.state.functions import Block
from core.state.functions import Function
from core.state.functions_ext import ExtFunctions
from core.state.globals import Globals
from core.state.memory import Memory
from core.state.stack import Stack
from core.state.tables import Tables
if TYPE_CHECKING:
    from core.tile import AbstractTile
from core.value import Val

T = TypeVar('T')


class GlobalState:
    """Combines multiple states like stack, memory, and locals into one global state."""
    def __init__(self):
        self.checkpoints = {}
        self.globals = Globals()
        self.tables = Tables()
        self.functions = Functions()
        self.memory = Memory()
        self.stack = Stack()
        self.constraints = Constraints()
        self.ext_functions = ExtFunctions()
        self.canary_output = []

    def get_all_tile_arrays(self)->List[List["AbstractTile"]]:
        """Returns a set of all tile arrays. E.g. used for postprocessing."""
        tile_arrays = []
        for function in self.functions.functions.values():
            tile_arrays.extend(function.get_all_tile_arrays())
        return tile_arrays

    def get_max_block_depth(self) -> int:
        """Returns the maximum block depth of the current state."""
        max_depth = 0
        for function in self.functions.functions.values():
            depth = function.get_max_block_depth()
            if depth > max_depth:
                max_depth = depth
        return max_depth

    def get_all_blocks(self)->List[Tuple[Block, int]]:
        """Returns all blocks and their depth in the current state."""
        blocks = []
        for function in self.functions.functions.values():
            blocks.extend(function.get_all_blocks(1))
        return blocks

    def create_checkpoint(self) -> int:
        """Creates a checkpoint of the current state and returns the id of the checkpoint."""
        i = 0
        while i in self.checkpoints:
            i += 1
        self.checkpoints[i] = copy.deepcopy({"globals": self.globals,
                                             "functions": self.functions,
                                             "memory": self.memory,
                                             "tables": self.tables,
                                             "stack": self.stack,
                                             "ext_functions": self.ext_functions,
                                             "constraints": self.constraints,
                                             "canary_output": self.canary_output,
                                                })

        return i

    def restore_checkpoint(self, i: int, delete=False):
        """Restores the state to the state of the checkpoint with the given id."""
        self.globals = copy.deepcopy(self.checkpoints[i]["globals"])
        self.functions = copy.deepcopy(self.checkpoints[i]["functions"])
        self.memory = copy.deepcopy(self.checkpoints[i]["memory"])
        self.tables = copy.deepcopy(self.checkpoints[i]["tables"])
        self.stack = copy.deepcopy(self.checkpoints[i]["stack"])
        self.ext_functions = copy.deepcopy(self.checkpoints[i]["ext_functions"])
        self.constraints = copy.deepcopy(self.checkpoints[i]["constraints"])
        self.canary_output = copy.deepcopy(self.checkpoints[i]["canary_output"])
        if delete:
            del self.checkpoints[i]

    def delete_checkpoint(self, i: int):
        """Deletes the checkpoint with the given id."""
        del self.checkpoints[i]

