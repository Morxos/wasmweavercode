import random
from typing import Type, List

from core.config.config import MAX_FUNCTIONS_PER_MODULE
from core.state.functions import Function, Block
from core.state.state import GlobalState
from core.tile import AbstractTileFactory, AbstractTile
from core.util import can_place_function, generate_function, generate_block
from core.value import get_random_val

DISABLED = True

def generate_random_rec_func_name(global_state: GlobalState) -> str:
    """Generates a random function name that is not already used in the global state"""
    while True:
        name = f"rec_func_{random.randint(0, 2 ** 32 - 1)}"
        for function in global_state.functions.functions.values():
            if function.name == name:
                continue
        return name

class AbstractRecursionFunctionTileFactory(AbstractTileFactory):

    def __init__(self, seed: int, tile_loader):
        super().__init__(seed, tile_loader)

    def create_function_create_tile(self, global_state: GlobalState, is_external=False) -> Type[AbstractTile]:
        name = generate_random_rec_func_name(global_state)
        tile_loader = self.tile_loader
        tile = type(f"CreateRecFunctionTile", (AbstractTile,), {"index": len(global_state.functions)})
        tile.name = f"Create and call recursive function"

        def can_be_placed(current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
            nonlocal name
            if current_state.stack.get_current_frame().stack_size() < 2:
                return False
            #Check if top value is i32
            if current_state.stack.get_current_frame().stack_peek().get_wasm_type() not in ["i32"]:
                return False
            #Check if second value is i32
            if current_state.stack.get_current_frame().stack_peek(2).get_wasm_type() not in ["i32"]:
                return False
            #Check if the the top value is between 0 and 10
            if current_state.stack.get_current_frame().stack_peek().value < 0 or current_state.stack.get_current_frame().stack_peek().value > 10:
                return False
            #Check if
            if not current_state.stack.can_add_n_frames(current_state.stack.get_current_frame().stack_peek().value+1):
                return False
            if MAX_FUNCTIONS_PER_MODULE <= len(current_state.functions.functions):
                return False
            if global_state.functions.get(name) is None:
                return True
            # Same from here as in call tile function
            return can_place_function(current_state.functions.get(name), current_state)

        def apply(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
            nonlocal name
            n_val = current_state.stack.get_current_frame().stack_pop()
            a_val = current_state.stack.get_current_frame().stack_pop()
            if global_state.functions.get(name) is None:



                block_inputs = [type(a_val)]
                block_outputs = [type(a_val)]

                function_inputs = [type(a_val),type(n_val)]
                function_outputs = [type(a_val)]

                f = Function(name, len(global_state.functions), function_inputs, function_outputs)
                block = generate_block()
                f.tiles = []


                forced_inputs = [type(stack_var) for stack_var in
                                   current_state.stack.get_current_frame().stack_peek_n_in_order(
                                       random.randint(0, min(len(current_state.stack.get_current_frame().stack), MAX_FUNCTION_INPUTS)))]
                forced_output_type_len = random.randint(0, min(len(forced_inputs),MAX_FUNCTION_OUTPUTS))
                forced_output_types = [type(get_random_val()) for _ in range(0, forced_output_type_len)]
                generate_function(tile_loader, name, forced_inputs, current_state,
                                  selection_strategy=tile_loader.selection_strategy, is_entry=False,
                                  fixed_output_types=forced_output_types)

                self.get_byte_code_size = global_state.functions.get(name).get_byte_code_size
                self.get_fuel_cost = global_state.functions.get(name).get_fuel_cost
                self.get_response_time = global_state.functions.get(name).get_response_time

            apply_state = apply_function(global_state.functions.get(name), global_state)
            if not apply_state and apply_state is not None:
                raise Exception("Function could not be applied")
            return apply_state

        def generate_code(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]) -> str:
            return f"call ${name}"

        tile.apply = apply
        tile.can_be_placed = staticmethod(can_be_placed)
        tile.generate_code = generate_code
        return tile

    def create_function_call_tile(self, name: str, index: int) -> Type[AbstractTile]:
        """Returns a tile that represents the function"""
        tile = type(f"FunctionCallTile", (AbstractTile,), {"index": index})
        tile.name = f"Call function"

        def function_can_be_placed(current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
            """Returns if the function can be placed in the current state"""
            nonlocal name
            return can_place_function(current_state.functions.get(name), current_state)

        def apply(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
            nonlocal name
            function = current_state.functions.get(name)
            apply_state = apply_function(function, current_state)
            if not not apply_state and apply_state is not None:
                raise Exception("Function could not be applied")
            return apply_state

        def generate_code(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]) -> str:
            nonlocal name
            return f"call ${name}"

        tile.apply = apply
        tile.can_be_placed = staticmethod(function_can_be_placed)
        tile.get_byte_code_size = lambda s: 1
        tile.get_fuel_cost = lambda s: 1
        tile.get_response_time = lambda s: 0.0001
        tile.generate_code = generate_code
        return tile