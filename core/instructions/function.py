import copy
import random
from typing import Type, List

from core.config.config import MAX_FUNCTIONS_PER_MODULE, FUNCTIONS_MIN_FUEL_AVAILABLE, FUNCTIONS_MIN_BYTECODE_AVAILABLE, \
    MAX_FUNCTION_OUTPUTS, MAX_FUNCTION_INPUTS
from core.constraints import FuelConstraint, ByteCodeSizeConstraint
from core.state.functions import Function, Block
from core.state.state import GlobalState
from core.tile import AbstractTileFactory, AbstractTile
from core.util import generate_function, stack_matches, apply_function, can_place_function
from core.value import get_random_val, RefFunc, I32

DISABLED = False

def generate_random_function_name(global_state: GlobalState) -> str:
    """Generates a random function name that is not already used in the global state"""
    while True:
        name = f"function_{random.randint(0, 2 ** 32 - 1)}"
        for function in global_state.functions.functions.values():
            if function.name == name:
                continue
        return name

class AbstractFunctionTileFactory(AbstractTileFactory):

    def __init__(self, seed: int, tile_loader):
        super().__init__(seed, tile_loader)

    def create_function_create_tile(self, global_state: GlobalState, is_external=False) -> Type[AbstractTile]:
        name = generate_random_function_name(global_state)
        tile_loader = self.tile_loader
        tile = type(f"CreateFunctionTile", (AbstractTile,), {"index": len(global_state.functions)})
        tile.name = f"Create and call function"

        def can_be_placed(current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
            nonlocal name
            if not current_state.stack.can_add_new_stack_frame():
                return False
            #Check if at least one value is on the stack
            if len(current_state.stack.get_current_frame().stack) < 1:
                return False
            if MAX_FUNCTIONS_PER_MODULE <= len(current_state.functions.functions):
                return False
            if global_state.functions.get(name) is None:
                return True
            # Same from here as in call tile function
            return can_place_function(current_state.functions.get(name), current_state)

        def apply(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
            nonlocal name
            if global_state.functions.get(name) is None:

                forced_inputs = [type(stack_var) for stack_var in
                                   current_state.stack.get_current_frame().stack_peek_n_in_order(
                                       random.randint(0, min(len(current_state.stack.get_current_frame().stack), MAX_FUNCTION_INPUTS)))]
                forced_output_type_len = random.randint(0, min(len(forced_inputs),MAX_FUNCTION_OUTPUTS))
                forced_output_types = [type(get_random_val()) for _ in range(0, forced_output_type_len)]
                generate_function(tile_loader, name, forced_inputs, current_state,
                                  selection_strategy=current_function.selection_strategy, is_entry=False,
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

    def create_function_indirect_call_tile(self, function_name: str, function_index: int, table_name: str, elem_index: int, global_state: GlobalState) -> Type[AbstractTile]:
        """Returns a tile that represents the function"""
        tile = type(f"FunctionIndirectCallTile", (AbstractTile,), {"index":function_index })
        tile.name = f"Indirect call function"

        def function_can_be_placed(current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
            """Returns if the function can be placed in the current state"""
            # Check if new stack frame can be added
            #Check if i32 is on the stack
            if len(current_state.stack.get_current_frame().stack) < 1:
                return False
            if not isinstance(current_state.stack.get_current_frame().stack_peek(1), I32):
                return False
            top_value = current_state.stack.get_current_frame().stack_pop()
            if top_value != elem_index:
                current_state.stack.get_current_frame().stack_push(top_value)
                return False
            print("Indirect call", function_name)
            result = can_place_function(current_state.functions.get(function_name), current_state)
            print("Indirect call test end!", function_name)

            current_state.stack.get_current_frame().stack_push(top_value)
            return result

        def apply(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
            # Pop the value from the stack
            current_state.stack.get_current_frame().stack_pop()
            # Add stack frame
            apply_state = apply_function(current_state.functions.get(function_name), current_state)
            if not apply_state and apply_state is not None:
                raise Exception("Function could not be applied")
            return apply_state

        def generate_code(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]) -> str:
            return f"(call_indirect (table ${table_name}) (type ${current_state.functions.get(function_name).get_sig_name()}))"

        tile.apply = apply
        function = global_state.functions.get(function_name)
        tile.can_be_placed = staticmethod(function_can_be_placed)
        tile.get_byte_code_size = function.get_byte_code_size
        tile.get_fuel_cost = function.get_fuel_cost
        tile.get_response_time = function.get_response_time
        tile.generate_code = generate_code
        return tile

    def create_function_ref_to_stack_tile(self, function: Function) -> Type[AbstractTile]:
        """Returns a tile that represents the function"""
        tile = type(f"FunctionRefToStackTile", (AbstractTile,), {"index": function.index})
        tile.name = f"Push function reference to stack"

        def function_can_be_placed(current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
            """Returns if the function can be placed in the current state"""
            return current_state.stack.get_current_frame().can_push_to_stack()

        def apply(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
            current_state.stack.get_current_frame().stack_push(RefFunc(function.name))

        def generate_code(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]) -> str:
            return f"ref.func ${function.name}"


        tile.apply = apply
        tile.can_be_placed = staticmethod(function_can_be_placed)
        tile.generate_code = generate_code
        return tile

    def generate_all_placeable_tiles(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        """Generates all function tiles that can be placed in the current state"""
        function_tiles = []
        #Generate the tile
        for function in current_state.functions.functions.values():
            if not self.create_function_call_tile(function.name,function.index).can_be_placed(current_state, current_function, current_blocks):
                continue
            function_tiles.append(self.create_function_call_tile(function.name,function.index))
        #Function reference to stack
        for function in current_state.functions.functions.values():
            if not self.create_function_ref_to_stack_tile(function).can_be_placed(current_state, current_function, current_blocks):
                continue
            function_tiles.append(self.create_function_ref_to_stack_tile(function))
        #Function indirect call
        for table_name, table in current_state.tables.tables.items():
            for elem_index, elem in enumerate(table.elements):

                if not isinstance(elem, RefFunc) or elem.value is None:
                    continue
                function_name = elem.value
                function = current_state.functions.get(function_name)
                if not self.create_function_indirect_call_tile(function.name, function.index, table_name, elem_index,current_state).can_be_placed(
                        current_state, current_function, current_blocks):
                    continue
                function_tiles.append(
                    self.create_function_indirect_call_tile(function.name, function.index, table_name, elem_index,current_state))
        #Generate the create function tile
        create_function_tile = self.create_function_create_tile(current_state)
        if create_function_tile.can_be_placed(current_state, current_function, current_blocks):
            function_tiles.append(create_function_tile)
        #Restore the state
        return function_tiles