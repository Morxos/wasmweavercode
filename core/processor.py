import random

import numpy as np

from core.instructions.debug_tiles import StackInspectorTile, ReachabilityFlagTile
from core.state.state import GlobalState


class AbstractPostProcessor:
    def __call__(self, global_state: GlobalState)->GlobalState:
        raise NotImplementedError()

    def detach(self, global_state: GlobalState)->GlobalState:
        raise NotImplementedError()

class StackInspectorPostProcessor(AbstractPostProcessor):
    """Inserts an stack analysis tile at some random point in the program."""

    def __init__(self):
        self.stack_inspector_tile = StackInspectorTile(0)
        self.tile_array = None

    def __call__(self, global_state: GlobalState)->GlobalState:
        #Get all tile arrays
        self.stack_inspector_tile = StackInspectorTile(0)
        tile_arrays = global_state.get_all_tile_arrays()
        total_spot_count = 0
        for tile_array in tile_arrays:
            total_spot_count += len(tile_array)
        random_position = random.randint(0, total_spot_count - 1)
        #Insert local tile there
        current_index = 0
        for tile_array in tile_arrays:
            for i in range(0, len(tile_array)):
                if random_position == 0:
                    #Place the tile here
                    tile_array.insert(i, self.stack_inspector_tile)
                    self.tile_array = tile_array
                    return global_state
                random_position-=1
        raise Exception("Could not place stack analysis tile!")

    def detach(self, global_state: GlobalState)->GlobalState:
        if self.tile_array is not None:
            self.tile_array.remove(self.stack_inspector_tile)
            self.tile_array = None
        else:
            raise Exception("No stack analysis tile! First call on global state.")
        return global_state

class FlagReachabilityPostProcessor(AbstractPostProcessor):
    def __init__(self, max_flags: int = 5):
        self.flag_tiles = []
        self.absolute_position_in_binary = []
        self.tile_arrays = []
        self.max_flags = max_flags

    def __call__(self, global_state: GlobalState)->GlobalState:
        tile_arrays = global_state.get_all_tile_arrays()
        total_spot_count = 0
        for tile_array in tile_arrays:
            total_spot_count += len(tile_array)

        interesting_indices = []
        interesting_weights = []
        #Beginning and end of arrays
        current_index = 0
        for array in tile_arrays:
            for i in range(0, len(array)+1):
                if i == 0: #Beginning of a block
                    interesting_indices.append(current_index) #Start and end of functions and blocks
                    interesting_weights.append(0.5) # Normal weight
                #elif i == len(array): #End of a block
                #    interesting_indices.append(current_index)
                #    interesting_weights.append(0.5)
                elif type(array[i-1]).__name__ in [
                                                   "BrIfTile",
                                                   "BrTableTile",
                                                   ]:
                    interesting_indices.append(current_index)
                    interesting_weights.append(1) # Most interesting
                elif type(array[i - 1]).__name__ in ["ConditionTile", #Skip due to jumps
                                                     "LoopTile",
                                                     "BlockTile"]:
                    interesting_indices.append(current_index)
                    interesting_weights.append(0.5)
                #elif type(array[i - 1]).__name__ in ["BrTile"]: # Will never be reached, but maybe interesting for reasoning

#                    interesting_weights.append(0.1)
 #                   interesting_indices.append(current_index)
                #else:
                #    #Very small chance of random tile to be interesting
                #    interesting_weights.append(0.01)
                #    interesting_indices.append(current_index)
                current_index +=1

        print("Interesting indices: ", interesting_indices)
        print("Weights: ", interesting_weights)
        flag_count = min(self.max_flags, len(interesting_indices))
        #Make probabilities sum up to 1
        interesting_weights = np.array(interesting_weights)
        interesting_weights = interesting_weights / np.sum(interesting_weights)
        #Choose random indices by weighted sampling
        chosen_indices = np.random.choice(interesting_indices, size=flag_count, replace=False, p=interesting_weights)
        #Sort the chosen indices
        chosen_indices.sort()
        print("Chosen indices: ", chosen_indices)
        #Place the tiles from back to front
        self.flag_tiles.clear()
        self.absolute_position_in_binary.clear()
        for i in range(0, flag_count):
            #Place the tile here
            self.flag_tiles.append(ReachabilityFlagTile(0, "FLAG_" + str(i)))
            self.absolute_position_in_binary.append(chosen_indices[i])
        current_index = total_spot_count + len(tile_arrays) -1
        current_flag_index = len(chosen_indices)-1
        for tile_array in reversed(tile_arrays):
            for k in range(len(tile_array), -1, -1):
                if current_index == chosen_indices[current_flag_index]:
                    print("Placing flag tile at index", current_index)
                    tile_array.insert(k, self.flag_tiles[current_flag_index])
                    current_flag_index -= 1

                print("Current index",current_index)
                current_index -= 1

        return global_state

    def detach(self, global_state: GlobalState)->GlobalState:
        #Remove the tiles from the tile arrays
        for i in range(0, len(self.flag_tiles)):
            for tile_array in global_state.get_all_tile_arrays():
                if self.flag_tiles[i] in tile_array:
                    tile_array.remove(self.flag_tiles[i])
                    break
        return global_state




