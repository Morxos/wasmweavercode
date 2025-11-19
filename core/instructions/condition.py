# SPDX-License-Identifier: MIT
# SPDX-FileCopyrightText: 2025 Siemens AG

import random
from typing import List, Type

from core.config.config import MAX_BLOCKS_PER_FUNCTION, MAX_IF_ELSE_INPUTS, MAX_IF_ELSE_OUTPUTS
from core.state.functions import Function, Block, BlockType
from core.state.state import GlobalState
from core.tile import AbstractTileFactory, AbstractTile, wrap_apply_function
from core.util import generate_block, can_place_block, apply_block
from core.value import I32, get_random_val

def generate_random_condition_name(function: Function) -> str:
    """
    Generates a random block name that is not already used in the function.
    """
    while True:
        name = f"condition_{random.randint(0, 2 ** 32 - 1)}"
        for block in function.blocks:
            if block.name == name:
                continue
        return name

class ConditionTileFactory(AbstractTileFactory):
    """
    Factory for generating conditional block tiles.
    """

    def __init__(self, seed: int, tile_loader):
        super().__init__(seed, tile_loader)

    def generate_all_placeable_tiles(self, global_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        """
        Generates all possible tiles that can create a new conditional block.
        """
        condition_tiles = []
        condition_tile = self.create_condition_tile(global_state)
        if condition_tile.can_be_placed(global_state, current_function, current_blocks):
            condition_tiles.append(condition_tile)
        return condition_tiles

    def create_condition_tile(self, global_state: GlobalState) -> Type[AbstractTile]:

        tile = type(f"ConditionTile", (AbstractTile,), {"if_block": None, "else_block": None})
        tile.name = f"Create conditional"
        tile_loader = self.tile_loader

        def can_be_placed(current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
            nonlocal tile
            if not current_state.stack.can_add_new_stack_frame():
                return False

            if len(current_state.stack.get_current_frame().stack) < 1:
                return False

            if not isinstance(current_state.stack.get_current_frame().stack_peek(1), I32):
                return False
            # If and else blocks are generated at the same time, so it is ok to only check for the presence of the if_block.
            if tile.if_block is None and MAX_BLOCKS_PER_FUNCTION <= len(current_function.blocks):
                return False

            if tile.if_block is None:
                return True


            block = tile.if_block if current_state.stack.get_current_frame().stack_peek().value != 0 else tile.else_block
            return can_place_block(current_state, current_function, current_blocks, block)

        def apply(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
            nonlocal tile, tile_loader
            should_execute_if = current_state.stack.get_current_frame().stack_pop().value != 0

            if tile.if_block is None:
                #Generate both blocks at the same time
                n_inputs = random.randint(0, min(MAX_IF_ELSE_INPUTS, len(current_state.stack.get_current_frame().stack)))
                input_types = [type(stack_var) for stack_var in
                               current_state.stack.get_current_frame().stack_peek_n_in_order(n_inputs)]
                forced_output_types = [type(get_random_val()) for _ in range(0, min(MAX_IF_ELSE_OUTPUTS, len(input_types)))]  # Change output type of if block
                tile.else_block = generate_block(tile_loader, global_state, current_function,
                                                 input_types,
                                                 "else", fixed_output_types=forced_output_types, blocks=current_blocks, block_type=BlockType.ELSE)


                tile.if_block = generate_block(tile_loader, global_state, current_function,
                                               input_types,
                                               "if", fixed_output_types=forced_output_types, blocks=current_blocks, block_type=BlockType.IF)
                tile.get_byte_code_size = lambda \
                        x: tile.if_block.get_byte_code_size() + tile.else_block.get_byte_code_size()

            block = tile.if_block if should_execute_if else tile.else_block
            apply_state = apply_block(current_state, current_function, current_blocks, block)
            if not apply_state:
                raise ValueError("Block cannot be applied.")
            return apply_state

        tile.generate_code = lambda se, st, f, bs: tile.if_block.generate_code(st, f, bs) + tile.else_block.generate_code(
            st, f, bs)
        tile.apply = wrap_apply_function(apply)
        tile.can_be_placed = staticmethod(can_be_placed)
        return tile

