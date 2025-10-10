import random
from copy import deepcopy
from typing import List, Type, Dict

from core.config.config import MIN_BLOCK_TILES, MIN_FUNCTION_TILES
from core.constraints import ConstraintsViolatedError, ConstraintType
from core.loader import AbstractTileLoader
from core.state.functions import Function, Block, BlockType
from core.state.globals import Global
from core.state.stack import StackFrame
from core.state.state import GlobalState
from core.state.tables import Table
from core.strategy import AbstractSelectionStrategy
from core.tile import AbstractTile, BranchOperation
from core.value import Val

class NoTilesLeftException(Exception):
    """Exception raised when no tiles are left to place."""
    pass


def stack_matches(global_state: GlobalState, expected: List[Type[Val]]):
    """Checks if the last values of the current stack frame match the expected types. This function does not modify the global state."""
    #Check if stack is smaller then expected
    if len(global_state.stack.get_current_frame().stack) < len(expected):
        return False

    stack = global_state.stack.get_current_frame().stack_peek_n_in_order(len(expected))
    for i in range(len(stack)):
        if not isinstance(stack[i], expected[i]):
            return False
    return True

def reset_old_locals_and_add_blank_new(current_locals: List[Val], old_locals: List[Val]):
    """Resets the old locals to the new locals. This is used to reset the locals of a function after it has been called."""
    #Reset old locals
    for i in range(len(current_locals)):
        if i >= len(old_locals):
            current_locals[i] = current_locals[i].get_default_value()
        else:
            current_locals[i] = old_locals[i]
    return current_locals

def reset_old_globals_and_add_blank_new(current_globals: List[Global], old_globals: List[Global]):
    #Reset old globals
    for current_global in current_globals:
        found = False
        for old_global in old_globals:
            if current_global.name == old_global.name:
                found = True
                current_global.value = deepcopy(old_global.value)
                break
        if not found:
            current_global.value = deepcopy(current_global.init_value)
    return current_globals

def reset_old_tables_and_add_blank_new(current_tables: Dict[str, Table], old_tables: Dict[str, Table]):
    for current_table_name in current_tables:
        if current_table_name not in old_tables:
            current_tables[current_table_name].wipe()
        else:
            current_tables[current_table_name] = deepcopy(old_tables[current_table_name])

    return current_tables






class Finish(AbstractTile):
    """Used only to stop function and block generation."""
    name = "Finish"

    def __init__(self, seed: int):
        super().__init__(seed)

    @staticmethod
    def can_be_placed(current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        #Is checked by function generation code
        raise NotImplementedError()

    def apply(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        return current_state

    def generate_code(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]) -> str:
        return f""

def can_place_function(function: Function, global_state: GlobalState)-> bool:
    """Applies the given tile to the current state. Returns the branch operation if there is one."""
    if not stack_matches(global_state, function.inputs):
        return False
    if not global_state.stack.can_add_new_stack_frame():
        return False
    if global_state.constraints.any_violated():
        return False
    #Backup global state and function
    before_generation_checkpoint = global_state.create_checkpoint()
    function_backup = function.create_checkpoint()


    global_state.stack.push_frame(global_state.stack.get_current_frame().stack_pop_n_in_order(len(function.inputs)),
                                  name=function.name)

    # Init locals
    for i in range(len(function.local_types)):
        if len(global_state.stack.get_current_frame().locals.locals) <= i:
            # If local does not exist, add it to the stack
            global_state.stack.get_current_frame().locals.add(function.local_types[i].get_default_value())

    for tile in function.tiles:
        # Apply before constraints to limit recursion depth before checking tile
        tile.apply_constraints(global_state, function, [], static_metrics=False)
        if global_state.constraints.any_violated():
            global_state.restore_checkpoint(before_generation_checkpoint, delete=True)
            function.restore_checkpoint(function_backup, delete=True)
            return False
        if not tile.can_be_placed(global_state, function, []):
            global_state.restore_checkpoint(before_generation_checkpoint, delete=True)
            function.restore_checkpoint(function_backup, delete=True)
            return False
        branch_operation = tile.apply(global_state, function, [])
        if branch_operation is not None:
            # If the tile is a branch operation, we need to apply the branch operation to the global state
            # and return the branch operation
            if isinstance(branch_operation, BranchOperation):
                if branch_operation.target_index == 0: #If index was already counted to zero, we need to handle the return.
                    global_state.restore_checkpoint(before_generation_checkpoint, delete=True)
                    function.restore_checkpoint(function_backup, delete=True)
                    return True
                else: #The next block has to handle the branch operation, but we are already at function level, so raise an error.
                    raise ValueError(f"Branch operation {branch_operation} is not valid beyond function level.")

    # Write back current stack values to the previous stack frame
    for val in global_state.stack.get_current_frame().stack:
        if not global_state.stack.get_last_frame().can_push_to_stack(1):
            global_state.restore_checkpoint(before_generation_checkpoint, delete=True)
            function.restore_checkpoint(function_backup, delete=True)
            return False
        global_state.stack.get_last_frame().stack_push(val)
    global_state.stack.pop_frame()
    global_state.restore_checkpoint(before_generation_checkpoint, delete=True)
    function.restore_checkpoint(function_backup, delete=True)
    return True

def apply_function(function: Function, global_state: GlobalState)-> None | BranchOperation:
    """Applies the given tile to the current state. Returns the branch operation if there is one."""
    if not stack_matches(global_state, function.inputs):
        raise ValueError(f"Input types do not match stack. Expected {function.inputs}, got {global_state.stack.get_current_frame().stack}")

    global_state.stack.push_frame(global_state.stack.get_current_frame().stack_pop_n_in_order(len(function.inputs)),
                                  name=function.name)

    #Init locals
    for i in range(len(function.local_types)):
        if len(global_state.stack.get_current_frame().locals.locals) <= i:
            #If local does not exist, add it to the stack
            global_state.stack.get_current_frame().locals.add(function.local_types[i].get_default_value())

    for tile in function.tiles:
        branch_operation = tile.apply(global_state, function, [])
        tile.apply_constraints(global_state, function, [], static_metrics=False)

        if branch_operation is not None:
            # If the tile is a branch operation, we need to apply the branch operation to the global state
            # and return the branch operation
            if isinstance(branch_operation, BranchOperation):
                if branch_operation.target_index == 0: #If index was already counted to zero, we need to handle the return.
                    global_state.stack.pop_frame()
                    #Write return values to stack
                    for val in branch_operation.return_values:
                        global_state.stack.get_current_frame().stack_push(val)
                    return None
                else: #The next block has to handle the branch operation, but we are already at function level, so raise an error.
                    raise ValueError(f"Branch operation {branch_operation} is not valid beyond function level.")

    # Write back current stack values to the previous stack frame
    for val in global_state.stack.get_current_frame().stack:
        global_state.stack.get_last_frame().stack_push(val)
    global_state.stack.pop_frame()

    return None






def generate_function(tile_loader: AbstractTileLoader, name: str, input_types: List[Type[Val]],
                      global_state: GlobalState, selection_strategy: AbstractSelectionStrategy, is_entry,
                      fixed_output_types: List[Type[Val]]):
    """
    Generates a internal/external function with the given name, input types, output types in the current global state.
    Resets the global state after it finished the function generation.
    """
    global_checkpoint_count_before = len(global_state.checkpoints)
    runtime_metrics = deepcopy(global_state.constraints.get_all_by_type(ConstraintType.RUNTIME))

    if not stack_matches(global_state, input_types):
        raise ValueError(f"Input types do not match stack. Expected {input_types}, got {global_state.stack}")

    f = Function(name,len(global_state.functions), inputs=input_types, outputs=fixed_output_types, is_external=False)
    #f.selection_strategy = selection_strategy

    global_backup = deepcopy(global_state.globals)
    table_backup = deepcopy(global_state.tables)
    stack_backup = deepcopy(global_state.stack)
    memory_backup = deepcopy(global_state.memory)
    #Add function stack frame
    global_state.stack.push_frame(global_state.stack.get_current_frame().stack_pop_n_in_order(len(input_types)),
                                  name=name)
    # Add params to function local types
    for i, inp in enumerate(input_types):
        f.local_types.append(inp)



    while True:

        #Get all placeable tiles
        placeable_tiles = tile_loader.get_placeable_tiles(global_state, current_function=f, current_blocks=[])
        #Check if function can be finished
        if compare_stack_frame_for_type_equality(global_state.stack.get_current_frame(), fixed_output_types) and MIN_FUNCTION_TILES <= len(f.tiles):
            if is_entry:
                if global_state.constraints.is_finished():
                    placeable_tiles.append(Finish)
            else:
                placeable_tiles.append(Finish)

        #If no placeable tiles, reset
        if not placeable_tiles:
            raise NoTilesLeftException()

        tile = selection_strategy.select(placeable_tiles, global_state, f, [])(random.randint(0, 2 ** 32 - 1))

        #Apply tile to global state
        branch_operation = tile.apply(global_state, f, [])
        tile.apply_constraints(global_state, f, [])
        if isinstance(branch_operation, BranchOperation):
            # Now we now, that the file was an block tile and we are not returning via the conventional path. For this, we have to push a phantom result on the stack to get through static code analysis.
            if type(tile).__name__=="BlockTile":
                output_types: List[Type[Val]] = tile.block.outputs
                for output_type  in output_types:
                    global_state.stack.get_current_frame().stack_push(output_type.get_random_val())
            elif type(tile).__name__=="ConditionTile":
                output_types: List[Type[Val]] = tile.if_block.outputs
                for output_type  in output_types:
                    global_state.stack.get_current_frame().stack_push(output_type.get_random_val())
            elif type(tile).__name__=="LoopTile":
                output_types: List[Type[Val]] = tile.inner_block.outputs
                for output_type  in output_types:
                    global_state.stack.get_current_frame().stack_push(output_type.get_random_val())


        #Add tile to selected tiles
        if tile.name != "Finish":
            f.tiles.append(tile)

        #Check if constraints are violated
        if global_state.constraints.any_violated():
            raise ConstraintsViolatedError()

        #Check if last placed tile was a br or return tile.
        if tile.name == "Br" or tile.name == "Return":
            break
        #Check if constraints are finished
        elif tile.name == "Finish":
            break

    global_state.stack.pop_frame()

    #Restore globals
    current_globals = deepcopy(global_state.globals)
    global_state.globals = global_backup
    global_state.globals.globals = reset_old_globals_and_add_blank_new(current_globals.globals,global_state.globals.globals)

    #Restore tables
    current_tables = deepcopy(global_state.tables)
    global_state.tables = table_backup
    global_state.tables.tables = reset_old_tables_and_add_blank_new(current_tables.tables,global_state.tables.tables)

    #Restore stack
    global_state.stack = stack_backup
    #Restore memory
    global_state.memory = memory_backup

    global_state.functions.set(f)
    #Check if function in global state
    if f not in global_state.functions.functions.values():
        raise ValueError(f"Function {f} not in global state")

    #Reset runtime metrics
    global_state.constraints.set_all(runtime_metrics)
    #Check if checkpoint count is the same as at the beginning
    if len(global_state.checkpoints) != global_checkpoint_count_before:
        raise ValueError(f"Checkpoint count changed during function generation. Expected {global_checkpoint_count_before}, got {len(global_state.checkpoints)}")
    return f

def compare_stack_frame_for_type_equality(current_stack_frame: StackFrame, expected_var_types: List[Type[Val]]):
    """Compares two stack frames for type equality of their tiles. Returns True if the stack frames are equal, False otherwise."""
    if expected_var_types is None:
        return True
    if len(current_stack_frame.stack) != len(expected_var_types):
        return False
    for stack_val_0, expected in zip(current_stack_frame.stack, expected_var_types):
        if type(stack_val_0) != expected:
            return False
    return True

def can_place_block(global_state: GlobalState,function: Function, current_blocks: List[Block], block: Block, repetitions: int = 1)-> bool:
    """Checks if the given block can be applied to the current state."""
    if not stack_matches(global_state, block.inputs):
        return False

    #Check if we can add one more stack frame
    if not global_state.stack.can_add_new_stack_frame():
        return False

    #Check if constraints are already violated
    if global_state.constraints.any_violated():
        return False

    #Backup global state and function
    before_generation_checkpoint = global_state.create_checkpoint()
    function_backup = function.create_checkpoint()

    global_state.stack.push_frame(stack=global_state.stack.get_current_frame().stack_pop_n_in_order(len(block.inputs)),
                                  name=block.name)
    global_state.stack.get_current_frame().locals = global_state.stack.get_last_frame().locals

    for rep in range(repetitions):
        for tile in block.tiles:
            #Apply before constraints to limit recursion depth before checking tile
            tile.apply_constraints(global_state, function, current_blocks + [block], static_metrics=False)
            if global_state.constraints.any_violated():
                global_state.restore_checkpoint(before_generation_checkpoint, delete=True)
                function.restore_checkpoint(function_backup, delete=True)
                return False
            if not tile.can_be_placed(global_state, function, current_blocks+[block]):
                global_state.restore_checkpoint(before_generation_checkpoint, delete=True)
                function.restore_checkpoint(function_backup, delete=True)
                return False
            branch_operation = tile.apply(global_state, function, current_blocks+[block])
            if branch_operation is not None:
                # If the tile is a branch operation, we need to apply the branch operation to the global state
                # and return the branch operation
                if isinstance(branch_operation, BranchOperation):
                    global_state.restore_checkpoint(before_generation_checkpoint, delete=True)
                    function.restore_checkpoint(function_backup, delete=True)
                    return True

    #Write back current stack values to the previous stack frame
    for val in global_state.stack.get_current_frame().stack:
        if not global_state.stack.get_last_frame().can_push_to_stack(1):
            global_state.restore_checkpoint(before_generation_checkpoint, delete=True)
            function.restore_checkpoint(function_backup, delete=True)
            return False
        global_state.stack.get_last_frame().stack_push(val)
    global_state.stack.pop_frame()
    global_state.restore_checkpoint(before_generation_checkpoint, delete=True)
    function.restore_checkpoint(function_backup, delete=True)
    return True

def apply_block(global_state: GlobalState,function: Function, current_blocks: List[Block], block: Block, repetitions: int = 1)-> bool | BranchOperation:
    """Applies the given tile to the current state. Returns the branch operation if there is one."""
    if not stack_matches(global_state, block.inputs):
        raise ValueError(f"Input types do not match stack. Expected {block.inputs}, got {global_state.stack.get_current_frame().stack}")

    # Check whether constraints are already violated
    if global_state.constraints.any_violated():
        raise ValueError(f"Constraints are already violated at the beginning of applying the block!")

    global_state.stack.push_frame(stack=global_state.stack.get_current_frame().stack_pop_n_in_order(len(block.inputs)),
                                  name=block.name)
    global_state.stack.get_current_frame().locals = global_state.stack.get_last_frame().locals

    #Setup missing locals
    for i in range(len(function.local_types)):
        if len(global_state.stack.get_current_frame().locals.locals) <= i:
            # If local does not exist, add it to the stack
            global_state.stack.get_current_frame().locals.add(function.local_types[i].get_default_value())

    for rep in range(repetitions):
        for tile in block.tiles:
            branch_operation = tile.apply(global_state, function, current_blocks)
            tile.apply_constraints(global_state, function, current_blocks,static_metrics=False)
            if branch_operation is not None:
                # If the tile is a branch operation, we need to apply the branch operation to the global state
                # and return the branch operation
                if isinstance(branch_operation, BranchOperation):
                    if branch_operation.target_index == 0: #If index was already counted to zero, we need to handle the return.
                        global_state.stack.pop_frame()
                        #Write return values to stack
                        for val in branch_operation.return_values:
                            global_state.stack.get_current_frame().stack_push(val)
                        return True
                    else: #The next block has to handle the branch operation, but we are already at function level, so raise an error.
                        global_state.stack.pop_frame()
                        return BranchOperation(branch_operation.target_index-1, branch_operation.target_name, branch_operation.return_values)
        #Write back current stack values to the previous stack frame
    for val in global_state.stack.get_current_frame().stack:
        global_state.stack.get_last_frame().stack_push(val)
    global_state.stack.pop_frame()
    return True


def generate_block(tile_loader: AbstractTileLoader, global_state: GlobalState, current_function: Function,
                   input_types: List[Type[Val]], name: str, fixed_output_types: List[Type[Val]], blocks: List[Block], block_type: BlockType):
    """Generates a block in the current function with the given name"""

    if not stack_matches(global_state, input_types):
        raise ValueError(f"Input types do not match stack. Expected {input_types}, got {global_state.stack}")

    runtime_metrics = deepcopy(global_state.constraints.get_all_by_type(ConstraintType.RUNTIME))

    block = Block(name,index=len(current_function.blocks),type=block_type)
    first_branch = None
    block.inputs = input_types
    block.outputs = fixed_output_types

    #Stack frame with shared locals with previous function
    stack_backup = deepcopy(global_state.stack)
    global_backup = deepcopy(global_state.globals)
    table_backup = deepcopy(global_state.tables)
    #Backup memory
    memory_backup = deepcopy(global_state.memory)

    locals_before_generation = deepcopy(global_state.stack.get_current_frame().locals)
    global_state.stack.push_frame(stack=global_state.stack.get_current_frame().stack_pop_n_in_order(len(input_types)),name=name)
    global_state.stack.get_current_frame().locals = global_state.stack.get_last_frame().locals

    while True:
        placeable_tiles = tile_loader.get_placeable_tiles(global_state, current_function, blocks+[block])
        #Check if can stop
        if compare_stack_frame_for_type_equality(global_state.stack.get_current_frame(), fixed_output_types) and MIN_BLOCK_TILES <= len(block.tiles):
            placeable_tiles.append(Finish)
        if not placeable_tiles:
            raise NoTilesLeftException()

        tile = tile_loader.selection_strategy.select(placeable_tiles, global_state, current_function, blocks + [block])(random.randint(0, 2 ** 32 - 1))
        branch_operation = tile.apply(global_state, current_function, blocks+[block])

        tile.apply_constraints(global_state, current_function, blocks+[block])

        if isinstance(branch_operation, BranchOperation):
            # Now we now, that the file was an block tile and we are not returning via the conventional path. For this, we have to push a phantom result on the stack to get through static code analysis.
            if isinstance(branch_operation, BranchOperation):
                # Now we now, that the file was an block tile and we are not returning via the conventional path. For this, we have to push a phantom result on the stack to get through static code analysis.
                if type(tile).__name__ == "BlockTile":
                    output_types: List[Type[Val]] = tile.block.outputs
                    for output_type in output_types:
                        global_state.stack.get_current_frame().stack_push(output_type.get_random_val())
                elif type(tile).__name__ == "ConditionTile":
                    output_types: List[Type[Val]] = tile.if_block.outputs
                    for output_type in output_types:
                        global_state.stack.get_current_frame().stack_push(output_type.get_random_val())
                elif type(tile).__name__ == "LoopTile":
                    output_types: List[Type[Val]] = tile.inner_block.outputs
                    for output_type in output_types:
                        global_state.stack.get_current_frame().stack_push(output_type.get_random_val())

        if tile.name != "Finish":
            block.tiles.append(tile)


        if global_state.constraints.any_violated():
            raise ConstraintsViolatedError()
        elif tile.name == "Finish":
            break

    global_state.stack.pop_frame()
    #Restore stack
    current_locals = deepcopy(global_state.stack.get_current_frame().locals)
    global_state.stack = stack_backup
    global_state.stack.get_current_frame().locals = reset_old_locals_and_add_blank_new(current_locals,global_state.stack.get_current_frame().locals)
    #Restore globals
    current_globals = deepcopy(global_state.globals)
    global_state.globals = global_backup
    global_state.globals.globals = reset_old_globals_and_add_blank_new(current_globals.globals,global_state.globals.globals)
    #Restore tables
    current_tables = deepcopy(global_state.tables)
    global_state.tables = table_backup
    global_state.tables.tables = reset_old_tables_and_add_blank_new(current_tables.tables,global_state.tables.tables)
    #Restore runtime metrics
    global_state.constraints.set_all(runtime_metrics)
    #Restore memory
    global_state.memory = memory_backup
    current_function.blocks.append(block)
    return block
