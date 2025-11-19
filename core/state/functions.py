# SPDX-License-Identifier: MIT
# SPDX-FileCopyrightText: 2025 Siemens AG

import copy
from enum import Enum
from typing import List, TYPE_CHECKING, Type, Dict
from core.formater import indent_code

if TYPE_CHECKING:
    from core.tile import AbstractTile
    from state import GlobalState

from core.value import Val

MAX_BLOCK_TYPE_INDEX = 4 #Just for convenience

class BlockType(Enum):
    """
    Enum for block types.
    """
    UNDEFINED = 0
    BLOCK = 1
    IF = 2
    ELSE = 3
    LOOP = 4

class Block:
    """
    A simple block representation.
    """

    def __init__(self, name: str, index: int, type: BlockType):
        self.name = name
        self.index = index
        self.inputs: List[Type[Val]] = []
        self.outputs: List[Type[Val]] = []
        self.tiles: List["AbstractTile"] = []
        self.type: BlockType = type

    def get_byte_code_size(self):
        """
        Returns the byte code size of the block.
        """
        return 1

    def get_fuel_cost(self):
        """
        Returns the fuel cost of the block.
        """
        return 1

    def get_response_time(self):
        """
        Returns the response time of the block.
        """
        return 0.0001

    def get_all_tile_arrays(self)->List[List["AbstractTile"]]:
        tile_arrays = []
        tile_arrays.append(self.tiles)
        for tile in self.tiles:
            if type(tile).__name__ == "ConditionTile":
                tile_arrays.extend(tile.if_block.get_all_tile_arrays())
                tile_arrays.extend(tile.else_block.get_all_tile_arrays())
            elif type(tile).__name__ == "BlockTile":
                tile_arrays.extend(tile.block.get_all_tile_arrays())
            elif type(tile).__name__ == "LoopTile":
                tile_arrays.extend(tile.inner_block.get_all_tile_arrays())
        return tile_arrays

    def get_max_block_depth(self) -> int:
        """
        Returns the maximum block depth of the block.
        """
        max_depth = 0
        for tile in self.tiles:
            if type(tile).__name__ == "ConditionTile":
                max_depth = max(max_depth, tile.if_block.get_max_block_depth())
                max_depth = max(max_depth, tile.else_block.get_max_block_depth())
            elif type(tile).__name__ == "BlockTile":
                max_depth = max(max_depth, tile.block.get_max_block_depth())
            elif type(tile).__name__ == "LoopTile":
                max_depth = max(max_depth, tile.inner_block.get_max_block_depth())
        return max_depth + 1

    def get_all_blocks(self, depth: int):
        """
        Returns all blocks.
        """
        blocks = []
        for tile in self.tiles:
            if type(tile).__name__ == "ConditionTile":
                blocks.append((tile.if_block, depth))
                blocks.append((tile.else_block, depth))
                blocks.extend(tile.if_block.get_all_blocks(depth+1))
                blocks.extend(tile.else_block.get_all_blocks(depth+1))
            elif type(tile).__name__ == "BlockTile":
                blocks.append((tile.block, depth))
                blocks.extend(tile.block.get_all_blocks(depth+1))
            elif type(tile).__name__ == "LoopTile":
                blocks.append((tile.inner_block, depth))
                blocks.extend(tile.inner_block.get_all_blocks(depth+1))
        return blocks

    def generate_code(self, current_state: "GlobalState", current_function: "Function", current_blocks: List["Block"]) -> str:
        """
        Generates the code of the block.
        """
        result_str = (f"block" if self.name not in ["if", "else"] else f"{self.name}")
        # Add inputs
        if self.inputs and self.name not in ["else"]:
            result_str += f" (param {' '.join(input_type.get_wasm_type() for input_type in self.inputs)})"
        # Add outputs
        if self.outputs and self.name not in ["else"]:
            result_str += f" (result {' '.join(output_type.get_wasm_type() for output_type in self.outputs)})"
        result_str += "\n"
        if self.tiles:
            result_str += indent_code(("\n").join(tile.generate_code(current_state, current_function,current_blocks+[self]) for tile in self.tiles))
            result_str += "\n"
        if self.name not in ["if"]:
            result_str += "end\n"
        return result_str


class Function:
    """
    A simple function representation.
    """

    def __init__(self, name, index, inputs: List[Type[Val]], outputs: List[Type[Val]], is_external=False):
        self.name = name
        self.index = index
        self.inputs = inputs
        self.outputs = outputs
        self.is_external = is_external
        self.tiles: List["AbstractTile"] = []
        self.local_types: List[Type[Val]] = []
        self.blocks: List[Block] = []
        self.checkpoints = {}
        self.current_block_depth = 0

    def create_checkpoint(self):
        checkpoint_id = 0
        while checkpoint_id in self.checkpoints:
            checkpoint_id += 1
        self.checkpoints[checkpoint_id] = {
            "name": copy.deepcopy(self.name),
            "inputs": copy.deepcopy(self.inputs),
            "outputs": copy.deepcopy(self.outputs),
            "tiles": copy.deepcopy(self.tiles),
            "local_types": copy.deepcopy(self.local_types),
            "blocks": copy.deepcopy(self.blocks)
        }
        return checkpoint_id

    def get_all_tile_arrays(self)->List[List["AbstractTile"]]:
        """
        Returns all tiles of this and all contained blocks in the function.
        """
        tile_arrays = []
        tile_arrays.append(self.tiles)
        for tile in self.tiles:
            if type(tile).__name__ == "ConditionTile":
                tile_arrays.extend(tile.if_block.get_all_tile_arrays())
                tile_arrays.extend(tile.else_block.get_all_tile_arrays())
            elif type(tile).__name__ == "BlockTile":
                tile_arrays.extend(tile.block.get_all_tile_arrays())
            elif type(tile).__name__ == "LoopTile":
                tile_arrays.extend(tile.inner_block.get_all_tile_arrays())
        return tile_arrays

    def get_max_block_depth(self) -> int:
        """
        Returns the maximum block depth of the function.
        """
        max_depth = 0
        for tile in self.tiles:
            if type(tile).__name__ == "ConditionTile":
                max_depth = max(max_depth, tile.if_block.get_max_block_depth())
                max_depth = max(max_depth, tile.else_block.get_max_block_depth())
            elif type(tile).__name__ == "BlockTile":
                max_depth = max(max_depth, tile.block.get_max_block_depth())
            elif type(tile).__name__ == "LoopTile":
                max_depth = max(max_depth, tile.inner_block.get_max_block_depth())
        return max_depth + 1

    def get_all_blocks(self, depth: int):
        """
        Returns all blocks.
        """
        blocks = []
        for tile in self.tiles:
            if type(tile).__name__ == "ConditionTile":
                blocks.append((tile.if_block, depth))
                blocks.append((tile.else_block, depth))
                blocks.extend(tile.if_block.get_all_blocks(depth+1))
                blocks.extend(tile.else_block.get_all_blocks(depth+1))
            elif type(tile).__name__ == "BlockTile":
                blocks.append((tile.block, depth))
                blocks.extend(tile.block.get_all_blocks(depth+1))
            elif type(tile).__name__ == "LoopTile":
                blocks.append((tile.inner_block, depth))
                blocks.extend(tile.inner_block.get_all_blocks(depth+1))
        return blocks

    def restore_checkpoint(self, checkpoint_id, delete=False):
        checkpoint = self.checkpoints[checkpoint_id]
        self.name = copy.deepcopy(checkpoint["name"])
        self.inputs = copy.deepcopy(checkpoint["inputs"])
        self.outputs = copy.deepcopy(checkpoint["outputs"])
        self.tiles = copy.deepcopy(checkpoint["tiles"])
        self.local_types = copy.deepcopy(checkpoint["local_types"])
        self.blocks = copy.deepcopy(checkpoint["blocks"])
        if delete:
            del self.checkpoints[checkpoint_id]

    def delete_checkpoint(self, checkpoint_id):
        del self.checkpoints[checkpoint_id]

    def get_byte_code_size(self):
        return 1

    def get_fuel_cost(self):
        return 1

    def get_response_time(self):
        return 0.0001

    def get_sig_name(self):
        return f"sig_{self.name}"

    def generate_signature(self):
        """
        Generates the signature of the function.
        """
        result_str = f"(type ${self.get_sig_name()} (func"
        if self.inputs:
            result_str += f" (param {' '.join(input_type.get_wasm_type() for input_type in self.inputs)})"
        if self.outputs:
            result_str += f" (result {' '.join(output_type.get_wasm_type() for output_type in self.outputs)})"
        result_str += "))"
        return result_str

    def generate_code(self, current_state: "GlobalState", current_function: "Function") -> str:
        """
        Generates the code of the function.
        """
        if self.is_external:
            result_str = f"    (import \"env\" \"{self.name}\" (func ${self.name} "
            if self.inputs:
                result_str += f"(param {' '.join(input_type.get_wasm_type() for input_type in self.inputs)})"
            if self.outputs:
                result_str += f"(result {' '.join(output_type.get_wasm_type() for output_type in self.outputs)})"
            result_str += "))\n"
            return result_str
        else:
            result_str = f"(func ${self.name} (export \"{self.name}\")"
            if self.inputs:
                result_str += f" (param {' '.join(input_type.get_wasm_type() for input_type in self.inputs)})"
            if self.outputs:
                result_str += f" (result {' '.join(output_type.get_wasm_type() for output_type in self.outputs)})"
            result_str += "\n"
            if self.local_types[len(self.inputs):]:
                result_str += indent_code("(local " + " ".join(
                    local_type.get_wasm_type() for local_type in self.local_types[len(self.inputs):]) + ")\n")
            result_str += indent_code("(local $temp i32)\n")
            result_str += indent_code("\n".join(tile.generate_code(current_state, current_function,[]) for tile in self.tiles))
            result_str += "\n"
            result_str += ")\n"
            return result_str


class Functions:
    """
    A simple function state that stores functions.
    """
    def __init__(self):
        self.functions: Dict[str, Function] = {}

    def set(self, value: Function):
        self.functions[value.name] = value

    def get(self, name):
        if name not in self.functions:
            return None
        return self.functions[name]

    def __len__(self):
        return len(self.functions)


