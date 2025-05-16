import random
import threading
import time
import traceback
from collections import deque
from copy import deepcopy
from typing import Any, SupportsFloat, List, Type
import traceback
import gymnasium as gym
import numpy as np
from gymnasium import Space
from gymnasium.core import ObsType, ActType
from gymnasium.spaces import Dict
from gymnasium.spaces.space import T_cov
import sys
sys.setrecursionlimit(2000)  # use with caution
from core.constraints import AbstractConstraint, ConstraintsViolatedError
from core.converter import global_state_to_wat_program
from core.formater import add_line_numbers_to_code
from core.loader import TileLoader
from core.processor import AbstractPostProcessor
from core.runner import run_global_state, AbstractRunResult
from core.state.functions import Function, Block, BlockType
from drl.embedder.block import BlockEmbedder
from drl.embedder.constraints import ConstraintsEmbedder
from core.value import Val
from core.state.state import GlobalState
from core.strategy import AbstractSelectionStrategy
from core.tile import AbstractTile
from core.util import generate_function, apply_function
from drl.embedder.function import FunctionEmbedder
from drl.embedder.globals import GlobalsEmbedder
from drl.embedder.locals import LocalsEmbedder
from drl.embedder.stack import StackEmbedder
from drl.embedder.tables import TablesEmbedder
from drl.embedder.tiles import TilesEmbedder, MAX_TILE_IDS
from drl.rewards import AbstractRewardFunction, SimpleRewardFunction


class EnvSelectionStrategy(AbstractSelectionStrategy):
    """
    Random selection strategy.
    """

    def __init__(self, env: "WasmWeaverEnv"):
        self.env = env

    name = "EnvSelectionStrategy"  # This is the name of the strategy

    def select(self, tiles: List[Type["AbstractTile"]], current_state: GlobalState, current_function: Function,
               current_blocks: List[Block]) -> Type[AbstractTile]:
        """
        Returns a random weight for the tile.
        """
        #print(self.env.counter)
        #if self.env.last_time_selection != -1:
        #    if time.time() - self.env.last_time_selection > 1:
        #        print("Long time since last selection!")
        #    else:
        #        print("Time since last selection:", time.time() - self.env.last_time_selection)


        self.env.counter += 1
        if self.env.finish_thread:
            raise Exception("Thread was reset!")
        self.env.current_state = current_state
        self.env.current_function = current_function
        self.env.current_blocks = current_blocks
        allowed_tiles = []
        for tile in tiles:
            forbidden = False
            for token in self.env.forbidden_instruction_name_tokens:
                if token.lower() in tile.name.lower():
                    forbidden = True
                    break
            if not forbidden:
                allowed_tiles.append(tile)
        self.env.current_tiles = allowed_tiles
        self.env.global_state_ready.release()
        self.env.action_ready.acquire()
        self.env.last_time_selection = time.time()
        #print("Available tiles:", [self.env.tiles_embedder.get_id(tile) for tile in allowed_tiles])

        for tile in allowed_tiles:
            if self.env.tiles_embedder.get_id(tile) == self.env.selected_index:
                #print("Selected tile:", tile.name, vars(tile))
                #print("Selected tile:", tile.name)
                self.env.last_selected_tile_type = tile
                return tile

        raise Exception("Index not found in tiles")


class ObjectSpace(Space):
    def __init__(self, cls: type | tuple[type, ...] | None = None):
        #  shape=()  → scalar (one object per env)
        #  dtype=object  → NumPy will store just the reference
        super().__init__(shape=(1,), dtype=np.object_)
        self._cls = cls

    def contains(self, x) -> bool:  # called by RLlib checks
        return self._cls is None or isinstance(x, self._cls)

    # Not used by RLlib but keeps the API complete
    def sample(self, mask: Any | None = None) -> T_cov:
        raise NotImplementedError("Cannot sample an arbitrary object.")


class WasmWeaverEnv(gym.Env):

    def __init__(self, constraints: List[AbstractConstraint], input_types: List[Type[Val]] = None,
                 output_types: List[List[Val]] = None, reward_function: AbstractRewardFunction = SimpleRewardFunction("default_task_store"),
                 verbose=False, post_processor_types:List[Type[AbstractPostProcessor]] = None, forbidden_instruction_name_tokens=None):

        super(WasmWeaverEnv, self).__init__()
        self.post_processor_types = post_processor_types if post_processor_types else []
        self.forbidden_instruction_name_tokens = forbidden_instruction_name_tokens if forbidden_instruction_name_tokens else []
        self.post_processor_instances = []
        self.function_embedder = FunctionEmbedder()
        self.stack_embedder = StackEmbedder()
        self.constraints_embedder = ConstraintsEmbedder()
        self.tiles_embedder = TilesEmbedder()
        self.block_embedder = BlockEmbedder()
        self.locals_embedder = LocalsEmbedder()
        self.globals_embedder = GlobalsEmbedder()
        self.tables_embedder = TablesEmbedder()
        self.last_selected_tile_type = None
        self.p = 0
        self.counter = 0
        self.last_time_selection = -1

        if input_types is None:
            self.input_types = []
        else:
            self.input_types = input_types

        if output_types is None:
            self.output_types = [[]]
        else:
            self.output_types = output_types

        self.action_space = gym.spaces.Discrete(MAX_TILE_IDS)
        self.observation_space = Dict({
            "current_function": self.function_embedder.get_space(),
            "current_block": self.block_embedder.get_space(),
            "current_stack": self.stack_embedder.get_space(),
            "constraints": self.constraints_embedder.get_space(),
            "locals": self.locals_embedder.get_space(),
            "globals": self.globals_embedder.get_space(),
            "tables": self.tables_embedder.get_space(),
            "tiles": self.tiles_embedder.get_list_space()
        })
        self.constraints: List[AbstractConstraint] = constraints
        self.global_state_ready = threading.Semaphore(0)
        self.action_ready = threading.Semaphore(0)
        self.current_state: GlobalState | None = None
        self.current_tiles: List[Type[AbstractTile]] | None = None
        self.current_function: Function | None = None
        self.current_blocks: List[Block] | None = None
        self.selected_index: float = 0
        self.reward_dict = None
        self.archive: deque[str] = deque(maxlen=1000)
        self.thread: threading.Thread | None = None
        self.tile_loader = TileLoader("core/instructions/")
        self.finish_state = None
        self.finish_thread = False
        self.current_code_str: str | None = None
        self.current_run_result: AbstractRunResult | None = None
        self.abstract_reward_function = reward_function
        self.verbose = verbose

    def set_progress(self, frac: float):
        """Sets the progress of the training"""
        self.p = frac

    def action_masks(self) -> list:
        if self.current_tiles is None:
            raise RuntimeError("Cannot get action mask without current tile.")
        action_mask = np.zeros(MAX_TILE_IDS, dtype=bool)
        for tile in self.current_tiles:
            action_mask[self.tiles_embedder.get_id(tile)] = True
        return action_mask.tolist()

    def __getstate__(self):
        state = self.__dict__.copy()
        # Remove the thread from the state
        del state['thread']
        del state['global_state_ready']
        del state['action_ready']
        return state

    def __setstate__(self, state):
        self.__dict__.update(state)
        # Recreate the semaphores
        self.global_state_ready = threading.Semaphore(0)
        self.action_ready = threading.Semaphore(0)
        # Recreate the thread
        self.thread = None

    def generate(self):
        print("Generating...")
        try:
            output_types = random.choice(self.output_types)
            generate_function(self.tile_loader, "run", self.input_types, self.init_state,
                              selection_strategy=EnvSelectionStrategy(self), is_entry=True,
                              fixed_output_types=output_types)

            self.current_code_str = global_state_to_wat_program(self.current_state)
            #print(self.current_code_str)
            self.current_state.memory.reinit_memory()
            #Instantiate and apply post processors
            for post_processor_type in self.post_processor_types:
                post_processor_instance = post_processor_type()
                #Apply it
                post_processor_instance(self.current_state)
                self.post_processor_instances.append(post_processor_instance)
            # Apply function
            apply_function(self.current_state.functions.get("run"), self.current_state)
            post_processors_copy = deepcopy(self.post_processor_instances)
            try:
                self.current_code_str = global_state_to_wat_program(self.current_state)
                self.current_run_result = run_global_state(self.current_state)
            except Exception as e:
                print("Error running global state")
                print(e)
                raise e
            finally:
                if not self.current_run_result is None:
                    self.current_run_result.post_processors = post_processors_copy

                self.current_run_result.return_types = output_types
                #Detach all post processor tiles
                for post_processor_instance in self.post_processor_instances:
                    post_processor_instance.detach(self.current_state)

            if self.verbose:
                print("Finished the following program:")
                print(add_line_numbers_to_code(self.current_code_str))
                print("Output:", self.current_run_result.return_values)

            self.finish_state = "Success"
            self.global_state_ready.release()
        except ConstraintsViolatedError as e:
            print("Failed!")
            self.finish_state = e
            self.global_state_ready.release()
        except Exception as e:
            print(e)
            #Print stack trace

            traceback.print_exc()
            self.finish_state = e
            self.global_state_ready.release()
        print("Finished!")

    def _init_state(self):
        if self.thread is not None and self.thread.is_alive():
            self.finish_thread = True
            self.global_state_ready.release()
            self.thread.join(timeout=1)
            self.finish_thread = False
        self.init_state = GlobalState()
        for constraint in self.constraints:
            # Reset constraints
            constraint.reset()
            self.init_state.constraints.add(constraint)
        self.init_state.stack.push_frame(params=None, stack=[], name="origin")
        self.selected_index = 0
        self.finish_state = None
        self.global_state_ready = threading.Semaphore(0)
        self.action_ready = threading.Semaphore(0)
        self.thread = threading.Thread(target=self.generate, daemon=True)
        self.thread.start()

    def step(
            self, action: ActType
    ) -> tuple[ObsType, SupportsFloat, bool, bool, dict[str, Any]]:
        self.selected_index = action
        self.action_ready.release()
        self.global_state_ready.acquire()
        done = False
        truncated = False
        reward, reward_dict = self.abstract_reward_function(self.finish_state, self.current_state, self.current_code_str,self.current_run_result,self.p, self.last_selected_tile_type)
        if isinstance(self.finish_state, Exception):
            done = True
        elif self.finish_state == "Success":
            done = True

        state = {
            "current_function": self.function_embedder(self.current_function),
            "current_block": self.block_embedder(
                self.current_blocks[-1] if self.current_blocks else Block("origin", 0, BlockType.UNDEFINED),
                len(self.current_blocks)),
            "current_stack": self.stack_embedder(self.current_state.stack, self.current_state),
            "constraints": self.constraints_embedder(self.current_state.constraints.constraints),
            "locals": self.locals_embedder(self.current_state.stack.get_current_frame().locals,self.current_state),
            "globals": self.globals_embedder(self.current_state.globals,self.current_state),
            "tables": self.tables_embedder(self.current_state.tables,self.current_state),
            "tiles": self.tiles_embedder.embed_tiles(self.current_function.tiles if not self.current_blocks else self.current_blocks[-1].tiles, self.current_state)
        }

        if not self.observation_space.contains(state):
            # Check all spaces
            if self.function_embedder.get_space().contains(self.function_embedder(self.current_function)):
                print("Function embedder ok!")
            else:
                print("Function embedder failed!")
                print(self.function_embedder(self.current_function))

            if self.stack_embedder.get_space().contains(self.stack_embedder(self.current_state.stack,self.current_state)):
                print("Stack embedder ok!")
            else:
                print("Stack embedder failed!")
                print(self.stack_embedder(self.current_state.stack,self.current_state))

            if self.constraints_embedder.get_space().contains(
                    self.constraints_embedder(self.current_state.constraints.constraints)):
                print("Constraints embedder ok!")
            else:
                print("Constraints embedder failed!")
                print(self.constraints_embedder(self.current_state.constraints.constraints))

            if self.block_embedder.get_space().contains(self.block_embedder(
                    self.current_blocks[-1] if self.current_blocks else Block("origin", 0, BlockType.UNDEFINED),
                    len(self.current_blocks))):
                print("Block embedder ok!")
            else:
                print("Block embedder failed!")
                print(self.block_embedder(
                    self.current_blocks[-1] if self.current_blocks else Block("origin", 0, BlockType.UNDEFINED),
                    len(self.current_blocks)))

            if self.locals_embedder.get_space().contains(
                    self.locals_embedder(self.current_state.stack.get_current_frame().locals)):
                print("Locals embedder ok!")
            else:
                print("Locals embedder failed!")
                print(self.locals_embedder(self.current_state.stack.get_current_frame().locals))

            if self.globals_embedder.get_space().contains(self.globals_embedder(self.current_state.globals)):
                print("Globals embedder ok!")
            else:
                print("Globals embedder failed!")
                print(self.globals_embedder(self.current_state.globals))

            if self.tables_embedder.get_space().contains(self.tables_embedder(self.current_state.tables)):
                print("Tables embedder ok!")
            else:
                print("Tables embedder failed!")
                print(self.tables_embedder(self.current_state.tables))

            raise Exception(f"Observation is not valid")

        return (state,
                reward,
                done,
                truncated,
                {"reward_dict": reward_dict})

    def reset(
            self,
            *,
            seed: int | None = None,
            options: dict[str, Any] | None = None,
    ) -> tuple[ObsType, dict[str, Any]]:

        super().reset(seed=seed)
        self.post_processor_instances = []
        self._init_state()
        print(self.global_state_ready._value)
        self.counter = 0
        self.global_state_ready.acquire()
        self.last_time_selection = -1

        state = {
            "current_function": self.function_embedder(self.current_function),
            "current_stack": self.stack_embedder(self.current_state.stack,self.current_state),
            "constraints": self.constraints_embedder(self.current_state.constraints.constraints),
            "current_block": self.block_embedder(
                self.current_blocks[-1] if self.current_blocks else Block("origin", 0, BlockType.UNDEFINED),
                len(self.current_blocks)),
            "locals": self.locals_embedder(self.current_state.stack.get_current_frame().locals,self.current_state),
            "globals": self.globals_embedder(self.current_state.globals,self.current_state),
            "tables": self.tables_embedder(self.current_state.tables,self.current_state),
            "tiles": self.tiles_embedder.embed_tiles(self.current_function.tiles if not self.current_blocks else self.current_blocks[-1].tiles, self.current_state)
        }

        if not self.observation_space.contains(state):
            # Check all spaces
            if self.function_embedder.get_space().contains(self.function_embedder(self.current_function)):
                print("Function embedder ok!")
            else:
                print("Function embedder failed!")
                print(self.function_embedder(self.current_function))

            if self.stack_embedder.get_space().contains(self.stack_embedder(self.current_state.stack,self.current_state)):
                print("Stack embedder ok!")
            else:
                print("Stack embedder failed!")
                print(self.stack_embedder(self.current_state.stack,self.current_state))

            if self.constraints_embedder.get_space().contains(
                    self.constraints_embedder(self.current_state.constraints.constraints)):
                print("Constraints embedder ok!")
            else:
                print("Constraints embedder failed!")
                print(self.constraints_embedder(self.current_state.constraints.constraints))

            if self.block_embedder.get_space().contains(self.block_embedder(
                    self.current_blocks[-1] if self.current_blocks else Block("origin", 0, BlockType.UNDEFINED),
                    len(self.current_blocks))):
                print("Block embedder ok!")
            else:
                print("Block embedder failed!")
                print(self.block_embedder(
                    self.current_blocks[-1] if self.current_blocks else Block("origin", 0, BlockType.UNDEFINED),
                    len(self.current_blocks)))

            if self.locals_embedder.get_space().contains(
                    self.locals_embedder(self.current_state.stack.get_current_frame().locals)):
                print("Locals embedder ok!")
            else:
                print("Locals embedder failed!")
                print(self.locals_embedder(self.current_state.stack.get_current_frame().locals))

            if self.globals_embedder.get_space().contains(self.globals_embedder(self.current_state.globals)):
                print("Globals embedder ok!")
            else:
                print("Globals embedder failed!")
                print(self.globals_embedder(self.current_state.globals))

            if self.tables_embedder.get_space().contains(self.tables_embedder(self.current_state.tables)):
                print("Tables embedder ok!")
            else:
                print("Tables embedder failed!")
                print(self.tables_embedder(self.current_state.tables))

            raise Exception(f"Observation is not valid")

        return (state,
                {"reward_dict":None})
