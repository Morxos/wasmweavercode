import math
import time
from typing import Type, Dict

from stable_baselines3.common.callbacks import BaseCallback

from core.constraints import FuelConstraint
from core.corpus import ProgramCorpus
from core.runner import AbstractRunResult
from core.state.state import GlobalState
from core.tile import AbstractTile
from drl.cache import ProgramCache

GLOBAL_CORPUS = ProgramCorpus()
class AbstractRewardFunction:

    def __call__(self, finish_state: str | Exception, global_state: GlobalState,last_global_state: GlobalState, wat_str: str, run_result: AbstractRunResult, p: float, last_placed_tile: Type[AbstractTile], dynamic_targets:Dict = None):
        return 0

class PartialRewardCallback(BaseCallback):
    def __init__(self, verbose=0):
        super(PartialRewardCallback, self).__init__(verbose)
        self.acc_reward_dict= {}
        self.reward_count_dict = {}

    def _on_rollout_end(self) -> None:
        if self.acc_reward_dict is None:
            return
        for key, val in self.acc_reward_dict.items():
            self.logger.record(f"custom/{key}", val/max(1,self.reward_count_dict[key]), exclude=("stdout",))

        self.acc_reward_dict = None
        self.reward_count_dict = None


    def _on_step(self) -> bool:
        infos = self.locals["infos"]
        for info in infos:
            if "reward_dict" in info and info["reward_dict"] is not None:
                if self.reward_count_dict is None:
                    self.acc_reward_dict = {}
                    self.reward_count_dict = {}
                for key, val in info["reward_dict"].items():
                    if key not in self.acc_reward_dict:
                        self.acc_reward_dict[key] = 0
                        self.reward_count_dict[key] = 0
                    self.acc_reward_dict[key] += val
                    self.reward_count_dict[key] += 1
        return True

def calc_fuel_reward(fuel_used, target_fuel):
    return math.exp(-abs((fuel_used / target_fuel) - 1))



class SimpleRewardFunction(AbstractRewardFunction):

    def __init__(self, target_dir: str, flag_reward: bool = False, depth_reward: bool = False,alignment_only: bool = False):
        self.buffer = ProgramCache(capacity=10_000, out_dir=target_dir)
        self.corpus = ProgramCorpus()
        self.flags_novelty = flag_reward
        self.depth_reward = depth_reward
        self.alignment_only = alignment_only

    def __call__(self, finish_state: str | Exception, global_state: GlobalState, last_global_state: GlobalState, wat_str: str, run_result: AbstractRunResult, p: float, last_placed_tile: Type[AbstractTile], dynamic_targets:Dict = None):
        #fuel_constraint = global_state.constraints[FuelConstraint]
        #print("Fuel stats:",global_state.constraints[FuelConstraint].resource, last_global_state.constraints[FuelConstraint].resource, len(global_state.stack.stack_frames))
        if finish_state == None:
            return 0, None
        if isinstance(finish_state, Exception):
            return -1, None

        if finish_state == "Success":
            target_fuel = dynamic_targets["fuel_target"]
            length_reward = calc_fuel_reward(run_result.fuel, target_fuel)
            start_time = time.time()
            module_reward, bucket_reward, trigram_reward = self.corpus.get_similarity(wat_str)
            end_time = time.time()
            print("Eval time (s):", end_time - start_time)
            combined_reward = length_reward + (0.75*module_reward + 0.25*bucket_reward) + trigram_reward
            return combined_reward, {"length_reward": length_reward,
                                   "length_abs_diff": abs((run_result.fuel-target_fuel)),
                                   "target_fuel": target_fuel,
                                   "used_fuel": run_result.fuel,
                                   "module_reward": module_reward,
                                   "bucket_reward": bucket_reward,
                                      "trigram_reward": trigram_reward}
        raise Exception("Should not reach here")
