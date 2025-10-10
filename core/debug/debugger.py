from typing import List

from core.config.config import MEMORY_MAX_WRITE_INDEX
from core.state.functions import Function, Block
from core.state.state import GlobalState
from core.tile import global_apply_callbacks, global_end_callbacks
from core.util import apply_function


def generate_trace(global_state: GlobalState, start_function="run", start_seed=0):
    global_state.memory.reinit_memory()
    global_state.globals.reinit_globals()
    global_state.tables.reinit_tables()
    global_state.constraints.reset_all()
    global_state.stack.stack_frames=[]
    global_state.stack.push_frame(params=None, stack=[], name="origin")

    instruction_counter = 0
    trace : List = []
    def dummy_apply_callback(instance, current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        nonlocal instruction_counter, trace
        print("\tStack:  ",current_state.stack.get_current_frame())
        print("\tMemory: ", '\t'.join(format(byte) for byte in current_state.memory.memory[:MEMORY_MAX_WRITE_INDEX]))
        print("\tGlobals:",current_state.globals)
        print(f"{instruction_counter}: {instance.__class__.__name__}")
        trace.append(instance.__class__.__name__)


        instruction_counter+=1
    global_apply_callbacks.append(dummy_apply_callback)
    print("------------TRACE START------------")
    apply_function(global_state.functions.get("run"), global_state)
    #Remove the callback
    global_apply_callbacks.remove(dummy_apply_callback)
    print("------------TRACE END------------")

def generate_trace_list(global_state: GlobalState):
    global_state.memory.reinit_memory()
    global_state.globals.reinit_globals()
    global_state.tables.reinit_tables()
    global_state.constraints.reset_all()
    global_state.stack.stack_frames = []
    global_state.stack.push_frame(params=None, stack=[], name="origin")

    instruction_counter = 0
    trace: List = []

    def dummy_apply_callback(instance, current_state: GlobalState, current_function: Function,
                             current_blocks: List[Block]):
        nonlocal instruction_counter, trace
        trace.append("START_"+instance.__class__.__name__)
        instruction_counter += 1

    def dummy_apply_end_callback(instance, current_state: GlobalState, current_function: Function,
                             current_blocks: List[Block]):
        nonlocal instruction_counter, trace
        trace.append("END_"+instance.__class__.__name__)

    global_apply_callbacks.append(dummy_apply_callback)
    global_end_callbacks.append(dummy_apply_end_callback)
    apply_function(global_state.functions.get("run"), global_state)
    global_apply_callbacks.remove(dummy_apply_callback)
    global_end_callbacks.remove(dummy_apply_end_callback)
    return trace