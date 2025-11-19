# SPDX-License-Identifier: MIT
# SPDX-FileCopyrightText: 2025 Siemens AG

import random
from typing import List, Type

from core.config.config import MAX_BLOCKS_PER_FUNCTION, \
    MAX_BLOCK_INPUTS, MAX_BLOCK_OUTPUTS
from core.state.functions import Function, Block, BlockType
from core.state.state import GlobalState
from core.tile import AbstractTileFactory, AbstractTile, wrap_apply_function
from core.util import generate_block, apply_block, can_place_block
from core.value import get_random_val

def generate_random_block_name(function: Function) -> str:
    """
    Generates a random block name that is not already used in the current function.
    """
    while True:
        name = f"block_{random.randint(0, 2 ** 32 - 1)}"
        for block in function.blocks:
            if block.name == name:
                continue
        return name

class AbstractBlockTileFactory(AbstractTileFactory):
    """
    Factory for generating block tiles.
    """

    def __init__(self, seed: int, tile_loader):
        super().__init__(seed, tile_loader)

    def generate_all_placeable_tiles(self, global_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        """
        Generates all possible tiles that can create a new block.
        """
        block_tiles = []
        block_tile = self.create_block_tile(global_state, current_function, current_blocks)
        if block_tile.can_be_placed(global_state, current_function, current_blocks):
            block_tiles.append(block_tile)
        return block_tiles

    def create_block_tile(self, global_state: GlobalState, current_function: Function, current_blocks: List[Block]) -> Type[AbstractTile]:
        """
        Creates a tile that generates a new block when applied.
        """
        tile = type(f"BlockTile", (AbstractTile,), {"block": None, "index": len(current_function.blocks)})
        tile.name = f"Create block"
        tile_loader = self.tile_loader

        def can_be_placed(current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
            nonlocal tile
            if not current_state.stack.can_add_new_stack_frame():
                return False
            nonlocal tile
            if tile.block is None:
                if MAX_BLOCKS_PER_FUNCTION <= len(current_function.blocks):
                    return False
                return True
            #Check if block can be applied
            return can_place_block(current_state, current_function, current_blocks, tile.block)

        def apply(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
            nonlocal tile, tile_loader
            if tile.block is None:
                name = generate_random_block_name(current_function)
                #Draw random inputs
                forced_inputs = [type(stack_var) for stack_var in
                                             current_state.stack.get_current_frame().stack_peek_n_in_order(
                                                 min(2, random.randint(0,
                                                                       min(MAX_BLOCK_INPUTS,len(current_state.stack.get_current_frame().stack)))))]
                #Draw random outputs
                forced_output_type_len = random.randint(0, min(len(forced_inputs), MAX_BLOCK_OUTPUTS))
                forced_output_types = [type(get_random_val()) for _ in range(0, forced_output_type_len)]
                #Generate block
                tile.block = generate_block(tile_loader, global_state, current_function,
                                            forced_inputs,
                                            name, fixed_output_types=forced_output_types, blocks=current_blocks,block_type=BlockType.BLOCK)
                tile.generate_code = tile.block.generate_code
                tile.get_byte_code_size = tile.block.get_byte_code_size
                tile.get_fuel_cost = tile.block.get_fuel_cost
                tile.get_response_time = tile.block.get_response_time

            #Now we apply the block again
            apply_state = apply_block(global_state, current_function, current_blocks, tile.block)
            if not apply_state:
                raise ValueError("Block cannot be applied")
            return apply_state



        tile.apply = wrap_apply_function(apply)
        tile.can_be_placed = staticmethod(can_be_placed)
        return tile


