# SPDX-License-Identifier: MIT
# SPDX-FileCopyrightText: 2025 Siemens AG

import random
from typing import List, Type
from core.config.config import MIN_BLOCK_TILES, MIN_FUNCTION_TILES
from core.state.functions import Function, Block, BlockType
from core.state.state import GlobalState
from core.tile import AbstractTileFactory, AbstractTile, BranchOperation, wrap_apply_function
from core.value import I32, Val


class AbstractBranchTileFactory(AbstractTileFactory):
    """
    Returns tiles for 'br' and 'return'
    """

    def __init__(self, seed: int, tile_loader):
        super().__init__(seed, tile_loader)

    def generate_all_placeable_tiles(self, global_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        """
        Generates all possible tiles for branching.
        """
        branch_tiles = []
        return_tile = self.create_branch_tile(global_state, current_function, current_blocks, len(current_blocks), is_return=True, target=current_function)
        if return_tile.can_be_placed(global_state, current_function, current_blocks):
            branch_tiles.append(return_tile)

        for index, block in enumerate(current_blocks):
            target_block = current_blocks[len(current_blocks)-1-index]
            br_tile = self.create_branch_tile(global_state, current_function, current_blocks, index, is_return=False,target=target_block)
            br_if_tile = self.create_branch_if_tile(global_state, current_function, current_blocks, index, target_block)
            if br_tile.can_be_placed(global_state, current_function, current_blocks):
                branch_tiles.append(br_tile)
            if br_if_tile.can_be_placed(global_state, current_function, current_blocks):
                branch_tiles.append(br_if_tile)

        # Branch to function
        br_tile = self.create_branch_tile(global_state, current_function, current_blocks, len(current_blocks), is_return=False, target=current_function)
        br_if_tile = self.create_branch_if_tile(global_state, current_function, current_blocks, len(current_blocks), target=current_function)
        if br_tile.can_be_placed(global_state, current_function, current_blocks):
            branch_tiles.append(br_tile)
        if br_if_tile.can_be_placed(global_state, current_function, current_blocks):
            branch_tiles.append(br_if_tile)

        branch_targets = [current_function]+current_blocks
        branch_indices = [len(branch_targets)-i-1 for i in range(len(branch_targets))]

        # Remove all loops
        branch_targets_without_loops = []
        branch_indices_without_loops = []
        for i in range(len(branch_targets)):
            if isinstance(branch_targets[i], Block):
                if branch_targets[i].type == BlockType.LOOP:
                    continue
            branch_targets_without_loops.append(branch_targets[i])
            branch_indices_without_loops.append(branch_indices[i])

        branch_targets_by_output_types = {}
        branch_indices_by_output_types = {}

        for i in range(len(branch_targets_without_loops)):
            output_types = tuple(branch_targets_without_loops[i].outputs)
            if output_types not in branch_targets_by_output_types:
                branch_targets_by_output_types[output_types] = []
                branch_indices_by_output_types[output_types] = []
            branch_targets_by_output_types[output_types].append(branch_targets_without_loops[i])
            branch_indices_by_output_types[output_types].append(branch_indices_without_loops[i])

        # Create branch table tiles
        for output_types in branch_targets_by_output_types:
            targets = branch_targets_by_output_types[output_types]
            indices = branch_indices_by_output_types[output_types]
            # Shuffle the targets and indices but keep the order
            zipped = list(zip(targets, indices))
            random.shuffle(zipped)
            targets, indices = zip(*zipped)
            # Create if at least one target
            if len(targets) >= 1:
                br_table_tile = self.create_branch_table_tile(global_state, current_function, current_blocks, indices, targets, list(output_types))
                if br_table_tile.can_be_placed(global_state, current_function, current_blocks):
                    branch_tiles.append(br_table_tile)


        return branch_tiles

    def create_branch_tile(self, global_state: GlobalState, current_function: Function, current_blocks: List[Block], index:int, is_return: bool, target: Function | Block) -> Type[AbstractTile]:
        """
        Creates a branch tile that jumps to the target block or function.
        """
        tile = type(f"BrTile", (AbstractTile,), {"index": index})
        tile.name = f"Br" if not is_return else "Return"

        def can_be_placed(current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
            nonlocal tile
            if isinstance(target, Block):
                if target.type == BlockType.LOOP:
                    return False # We currently dont support jumping to the beginning of loops


            if len(current_state.stack.get_current_frame().stack) != len(target.outputs):
                return False
            top_values_stack = current_state.stack.get_current_frame().stack_peek_n_in_order(len(target.outputs))

            #Check if min function length is reached
            if current_blocks:
                if len(current_blocks[-1].tiles) < MIN_BLOCK_TILES:
                    return False

            if not current_blocks and len(current_function.tiles) < MIN_FUNCTION_TILES:
                return False

            for i in range(len(target.outputs)):
                if not isinstance(top_values_stack[i], target.outputs[i]):
                    return False
            return True


        def apply(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
            nonlocal tile, target
            return_values = current_state.stack.get_current_frame().stack_peek_n_in_order(len(target.outputs))
            return BranchOperation(target_index=index, target_name=target.name, return_values=return_values)

        def generate_code(self, current_state: GlobalState, current_function: Function,
                          current_blocks: List[Block]) -> str:
            """Returns the code that the tile represents"""
            if is_return:
                return "return"
            else:
                return f"br {index}"

        def __repr__(self):
            return f"{tile.name} Target: {target.name} Index: {index}"


        tile.generate_code = generate_code
        tile.apply = wrap_apply_function(apply)
        tile.can_be_placed = staticmethod(can_be_placed)
        tile.__repr__ = __repr__
        return tile

    def create_branch_if_tile(self, global_state: GlobalState, current_function: Function, current_blocks: List[Block], index:int, target: Function | Block) -> Type[AbstractTile]:
        """
        Creates a branch if tile that jumps to the target block or function if the condition is true.
        """
        tile = type(f"BrIfTile", (AbstractTile,), {"index": index})
        tile.name = f"Br_if"

        def can_be_placed(current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
            nonlocal tile
            if isinstance(target, Block):
                if target.type == BlockType.LOOP:
                    return False # We currently dont support jumping to the beginning of loops


            if len(current_state.stack.get_current_frame().stack) != len(target.outputs)+1:
                return False

            condition = current_state.stack.get_current_frame().stack_peek(1)
            if not isinstance(condition, I32):
                return False

            if current_blocks:
                if len(current_blocks[-1].tiles) < MIN_BLOCK_TILES:
                    return False

            if not current_blocks and len(current_function.tiles) < MIN_FUNCTION_TILES:
                return False

            top_values_stack = current_state.stack.get_current_frame().stack_peek_n_in_order(len(target.outputs)+1)
            #Skip the condition. Remove the last element
            top_values_stack = top_values_stack[:-1]

            for i in range(len(target.outputs)):
                if not isinstance(top_values_stack[i], target.outputs[i]):
                    return False
            return True


        def apply(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
            nonlocal tile, target
            condition = current_state.stack.get_current_frame().stack_pop()
            if not isinstance(condition, I32):
                raise Exception("Condition is not an i32")
            if condition.value == 0:
                #Condition is false, so we won't jump
                return None
            return_values = current_state.stack.get_current_frame().stack_peek_n_in_order(len(target.outputs))
            return BranchOperation(target_index=index, target_name=target.name, return_values=return_values)

        def generate_code(self, current_state: GlobalState, current_function: Function,
                          current_blocks: List[Block]) -> str:
            return f"br_if {index}"

        def __repr__(self):
            return f"{tile.name} Target: {target.name} Index: {index}"


        tile.generate_code = generate_code
        tile.apply = wrap_apply_function(apply)
        tile.can_be_placed = staticmethod(can_be_placed)
        tile.__repr__ = __repr__
        return tile

    def create_branch_table_tile(self, global_state: GlobalState, current_function: Function, current_blocks: List[Block], indices: List[int], targets: List[Block | Function], outputs: List[Type[Val]]) -> None | Type[AbstractTile]:
        """
        Creates a branch table tile that jumps to one of the target blocks or functions based on the top value on the stack.
        """

        tile = type(f"BrTableTile", (AbstractTile,),{"indices": indices, "targets": targets})
        tile.name = f"Br_table"

        def can_be_placed(current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
            nonlocal tile


            if len(current_state.stack.get_current_frame().stack) != len(outputs)+1:
                return False

            condition = current_state.stack.get_current_frame().stack_peek(1)
            if not isinstance(condition, I32):
                return False

            top_values_stack = current_state.stack.get_current_frame().stack_peek_n_in_order(len(outputs)+1)
            # Skip the condition. Remove the last element
            top_values_stack = top_values_stack[:-1]

            if current_blocks:
                if len(current_blocks[-1].tiles) < MIN_BLOCK_TILES:
                    return False

            if not current_blocks and len(current_function.tiles) < MIN_FUNCTION_TILES:
                return False

            for i in range(len(outputs)):
                if not isinstance(top_values_stack[i], outputs[i]):
                    return False
            return True


        def apply(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
            nonlocal tile, targets
            condition = current_state.stack.get_current_frame().stack_pop()
            if not isinstance(condition, I32):
                raise Exception("Condition is not an i32")
            if condition.value >=0 and condition.value < len(indices)-1:
                index = indices[condition.value]
                target = targets[condition.value]
            else:
                index = indices[-1]
                target = targets[-1]
            return_values = current_state.stack.get_current_frame().stack_peek_n_in_order(len(target.outputs))
            return BranchOperation(target_index=index, target_name=target.name, return_values=return_values)

        def generate_code(self, current_state: GlobalState, current_function: Function,
                          current_blocks: List[Block]) -> str:
            """Returns the code that the tile represents"""
            return f"(br_table {' '.join(str(index) for index in indices)})"

        def __repr__(self):
            return f"{tile.name} Targets: {targets} Indices: {indices}"


        tile.generate_code = generate_code
        tile.apply = wrap_apply_function(apply)
        tile.can_be_placed = staticmethod(can_be_placed)
        tile.__repr__ = __repr__
        return tile