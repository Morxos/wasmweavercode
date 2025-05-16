import random
from typing import Type, TYPE_CHECKING, List
from core.state.functions import Function, Block
from core.state.state import GlobalState
if TYPE_CHECKING:
    from core.tile import AbstractTile


class AbstractSelectionStrategy:
    """
    Abstract base class for tile selection strategies.
    """
    name = "AbstractSelectionStrategy"  # This is the name of the strategy

    def select(self, tiles: List[Type["AbstractTile"]], current_state: GlobalState, current_function: Function, current_blocks: List[Block])->Type["AbstractTile"]:
        """
        Returns the weight of the tile.
        """
        raise NotImplementedError

    def get_name(self):
        """
        Returns the name of the strategy.
        """
        return self.name

class RandomSelectionStrategy(AbstractSelectionStrategy):
    """
    Random selection strategy.
    """
    name = "RandomSelectionStrategy"  # This is the name of the strategy

    def select(self, tiles: List[Type["AbstractTile"]], current_state: GlobalState, current_function: Function, current_blocks: List[Block])->Type["AbstractTile"]:
        """
        Returns a random weight for the tile.
        """
        selectable_tiles = []
        for tile in tiles:
            #Disable all load and store instructions
            #if "Load" in tile.name or "Store" in tile.name:
            #    continue

            #Reduce const instructions
            #if "Const" in tile.name:
            #    I64TruncF64S
            #if "condition" in tile.name.lower():
            #    return tile
            #if "GlobalGet" in tile.name:
            #    continue

            if "block" in tile.name:
                continue

            if "condition" in tile.name:
                continue

            if "loop" in tile.name:
                continue

            if "function" in tile.name:
                continue

            #if "GlobalSet" in tile.name:
            #    continue

            #if "LocalGet" in tile.name:
            #    continue

            #if "NoOp" in tile.name:
            #    continue

            #if tile.name.startswith("Create and call function"):
            #    continue

            #if tile.name.startswith("A simple loop block"):
            #    continue

            #if tile.name.startswith("A simple condition block"):
            #    continue

            #if tile.name.startswith("A simple block"):
            #    continue

            #if tile.name == "Canary":
            #    continue

            selectable_tiles.append(tile)

        #Select random tile
        if selectable_tiles:
            selected_tile = random.choice(selectable_tiles)
            return selected_tile
        else:
            raise Exception("No tile selected")