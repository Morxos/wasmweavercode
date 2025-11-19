# SPDX-License-Identifier: MIT
# SPDX-FileCopyrightText: 2025 Siemens AG

MAX_FUNCTIONS_PER_MODULE = 5  # This limits the max number of distinct functions per module
MAX_FUNCTION_CALL_DEPTH = 15  # This limits the max depth of e.g. function calls
MAX_BLOCKS_PER_FUNCTION = 5  # This limits the max number of blocks per function
MAX_IF_ELSE_PER_BLOCK = 5  # This limits the max number of if-else statements per block
MAX_LOCALS_PER_FUNCTION = 5  # This limits the max number of local variables per function
MAX_GLOBALS_PER_MODULE = 5  # This limits the max number of global variables per module
MEMORY_MAX_WRITE_INDEX = 64  # This limits the max index that can be written to in memory
MAX_TABLES_PER_MODULE = 2  # This limits the max number of tables per module
MAX_TABLE_SIZE = 10  # This limits the max size of a table
MAX_STACK_SIZE = 10  # This limits the max size of the stack
MAX_BLOCK_INPUTS = 2  # This limits the max number of inputs to a block
MAX_BLOCK_OUTPUTS = 2  # This limits the max number of outputs from a block
MIN_BLOCK_TILES = 5 # This limits the min number of tiles in a block. This also applies to if-else statements and loops
MAX_FUNCTION_INPUTS = 3 # This limits the max number of inputs to a function
MAX_FUNCTION_OUTPUTS = 3 # This limits the max number of outputs from a function
MIN_FUNCTION_TILES = 5 # This limits the min number of tiles in a function
MAX_IF_ELSE_INPUTS = 2  # This limits the max number of inputs to an if-else statement
MAX_IF_ELSE_OUTPUTS = 2  # This limits the max number of outputs from an if-else statement
FUNCTIONS_MIN_FUEL_AVAILABLE = 10  # The minimum amount of fuel available for functions to be selectable
FUNCTIONS_MIN_BYTECODE_AVAILABLE = 10  # The minimum amount of bytecode available for functions to be selectable
BOUNDED_LOOP_MIN = 10 # The minimum repetition count for bounded loops
BOUNDED_LOOP_MAX = 100 # The maximum repetition count for bounded loops
UNBOUNDED_LOOP_MIN = 1
UNBOUNDED_LOOP_MAX = 100

# Embedder Settings (for DRL agent)
MAX_CONSTRAINTS = 3 # The maximum number of constraints (e.g. bytecode size, fuel, etc.) for the DRL agent to consider
MAX_TILE_LOOKBACK = 64 # The maximum number of previously placed tiles in the current block to consider for next tile selection