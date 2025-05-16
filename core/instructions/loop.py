import random
import uuid
from copy import deepcopy
from typing import List, Type

from jinja2.ext import loopcontrols
from torch.fx.passes.pass_manager import loop_pass

from core.config.config import MAX_BLOCKS_PER_FUNCTION, BOUNDED_LOOP_MIN, BOUNDED_LOOP_MAX
from core.constraints import FuelConstraint, ByteCodeSizeConstraint, ConstraintType, ConstraintsViolatedError
from core.formater import indent_code
from core.state.functions import Function, Block, BlockType
from core.state.state import GlobalState
from core.tile import AbstractTileFactory, AbstractTile
from core.util import generate_block, can_place_block, apply_block
from core.value import I32

def generate_random_loop_name(function: Function) -> str:
    """Generates a random block name that is not already used in the function"""
    while True:
        name = f"loop_{random.randint(0, 2 ** 32 - 1)}"
        for block in function.blocks:
            if block.name == name:
                continue
        return name

def generate_random_bounded_loop_name(function: Function) -> str:
    """Generates a random block name that is not already used in the function"""
    while True:
        name = f"b_loop_{random.randint(0, 2 ** 32 - 1)}"
        for block in function.blocks:
            if block.name == name:
                continue
        return name

class LoopTileFactory(AbstractTileFactory):

    def __init__(self, seed: int, tile_loader):
        super().__init__(seed, tile_loader)

    def generate_all_placeable_tiles(self, global_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        """Generates all possible tiles"""
        loop_tiles = []
        loop_tile = self.create_loop_tile(global_state)
        if loop_tile.can_be_placed(global_state, current_function, current_blocks):
            loop_tiles.append(loop_tile)
        for i in range(BOUNDED_LOOP_MIN, BOUNDED_LOOP_MAX):
            bounded_loop_tile = self.create_bounded_loop_tile(global_state, i)
            if bounded_loop_tile.can_be_placed(global_state, current_function, current_blocks):
                loop_tiles.append(bounded_loop_tile)
        return loop_tiles


    def create_bounded_loop_tile(self, global_state: GlobalState, rep_count = 1) -> Type[AbstractTile]:

        tile = type(f"LoopTile", (AbstractTile,), {"inner_block": None, "rep_count": rep_count})
        tile.name = f"Create bounded loop"
        tile.loop_name = None
        tile_loader = self.tile_loader
        tile.local_name = uuid.uuid4().hex

        def can_be_placed(current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
            nonlocal tile
            if not current_state.stack.can_add_new_stack_frame():
                return False

            if tile.inner_block is None and MAX_BLOCKS_PER_FUNCTION <= len(current_function.blocks):
                return False

            if tile.inner_block is None:
                return True

            return can_place_block(global_state, current_function, current_blocks, tile.inner_block, rep_count)

        def apply(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
            nonlocal tile, tile_loader
            repetition_count = tile.rep_count

            if tile.inner_block is None:
                #Generate both blocks at the same time
                name = generate_random_bounded_loop_name(current_function)
                tile.loop_name = name
                #Backup the state
                constraints_backup = deepcopy(global_state.constraints)
                done = False
                for i in range(0,1):
                    global_state.constraints.divide_remaining_resources(ConstraintType.RUNTIME, repetition_count)
                    tile.inner_block = generate_block(tile_loader, global_state, current_function,
                                                      [],
                                                      "loop $" + name, fixed_output_types=[], blocks=current_blocks,
                                                      block_type=BlockType.LOOP)
                    #Restore constraints after backup
                    global_state.constraints = deepcopy(constraints_backup)
                    #Check if the block can be applied n times
                    if can_place_block(global_state, current_function, current_blocks, tile.inner_block, repetition_count):
                        done = True
                        break
                if not done:
                    raise ConstraintsViolatedError("Loop could not be generated")
            #Apply the block
            apply_state = apply_block(current_state, current_function, current_blocks, tile.inner_block,repetition_count)
            if not apply_state:
                raise ValueError("Block cannot be applied")
            return apply_state

        def generate_code(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]) -> str:
            result_str = "i32.const " + str(rep_count-1) + "\n"
            result_str += "loop $" + tile.loop_name + " (param i32)\n"
            # Add inputs
            result_str += indent_code("\n".join(
                loop_tile.generate_code(current_state, current_function, current_blocks+[self.inner_block]) for loop_tile in self.inner_block.tiles))
            result_str += "\n"
            tail_code = ""
            tail_code += f"i32.const 1\n"
            tail_code += f"i32.sub\n"
            tail_code += f"local.tee $temp\n" #Workaround for duplicating value on stack
            tail_code += f"local.get $temp\n"
            tail_code += f"i32.const 0\n"
            tail_code += f"i32.gt_s\n"
            tail_code += f"br_if $" + tile.loop_name + "\n"
            tail_code += "drop"
            tail_code = indent_code(tail_code)
            result_str += tail_code
            result_str += "\nend"

            return result_str

        tile.generate_code = generate_code

        tile.apply = apply
        tile.can_be_placed = staticmethod(can_be_placed)
        return tile

    def create_loop_tile(self, global_state: GlobalState) -> Type[AbstractTile]:

        tile = type(f"LoopTile", (AbstractTile,), {"inner_block": None})
        tile.name = f"Create unbounded loop"
        tile.loop_name = None
        tile_loader = self.tile_loader
        tile.local_name = uuid.uuid4().hex

        def can_be_placed(current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
            nonlocal tile
            if not current_state.stack.can_add_new_stack_frame():
                return False
                # Check if stack is larger then 0 and if the top value is an i32
            if len(current_state.stack.get_current_frame().stack) < 1:
                return False

            if not isinstance(current_state.stack.get_current_frame().stack_peek(1), I32):
                return False
            #Get repetition count i32
            rep_count = current_state.stack.get_current_frame().stack_peek(1).value
            if rep_count <= 0 or rep_count > 100:
                return False

            rep_count = rep_count + 1 #Loop is always executed once

            if tile.inner_block is None and MAX_BLOCKS_PER_FUNCTION <= len(current_function.blocks):
                return False

            if tile.inner_block is None:
                return True

            return can_place_block(global_state, current_function, current_blocks, tile.inner_block, rep_count)

        def apply(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
            nonlocal tile, tile_loader
            repetition_count = current_state.stack.get_current_frame().stack_pop().value + 1 #Loop is always executed once

            if tile.inner_block is None:
                #Generate both blocks at the same time
                name = generate_random_loop_name(current_function)
                tile.loop_name = name
                #Backup the state
                constraints_backup = deepcopy(global_state.constraints)
                done = False
                for i in range(0,1):
                    global_state.constraints.divide_remaining_resources(ConstraintType.RUNTIME, repetition_count)
                    tile.inner_block = generate_block(tile_loader, global_state, current_function,
                                                      [],
                                                      "loop $" + name, fixed_output_types=[], blocks=current_blocks,
                                                      block_type=BlockType.LOOP)
                    #Restore constraints after backup
                    global_state.constraints = deepcopy(constraints_backup)
                    #Check if the block can be applied n times
                    if can_place_block(global_state, current_function, current_blocks, tile.inner_block, repetition_count):
                        done = True
                        break

                if not done:
                    raise ConstraintsViolatedError("Loop could not be generated")
            #Apply the block
            apply_state = apply_block(current_state, current_function, current_blocks, tile.inner_block,repetition_count)
            if not apply_state:
                raise ValueError("Block cannot be applied")
            return apply_state

        def generate_code(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]) -> str:
            result_str = "loop $" + tile.loop_name + " (param i32)"
            # Add inputs
            result_str += indent_code("\n".join(
                loop_tile.generate_code(current_state, current_function, current_blocks+[self.inner_block]) for loop_tile in self.inner_block.tiles))
            result_str += "\n"
            tail_code = ""
            tail_code += f"i32.const 1\n"
            tail_code += f"i32.sub\n"
            tail_code += f"local.tee $temp\n" #Workaround for duplicating value on stack
            tail_code += f"local.get $temp\n"
            tail_code += f"i32.const 0\n"
            tail_code += f"i32.gt_s\n"
            tail_code += f"br_if $" + tile.loop_name + "\n"
            tail_code += "drop"
            tail_code = indent_code(tail_code)
            result_str += tail_code
            result_str += "\nend"

            return result_str

        tile.generate_code = generate_code

        tile.apply = apply
        tile.can_be_placed = staticmethod(can_be_placed)
        return tile

