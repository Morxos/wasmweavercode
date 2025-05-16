import math
from typing import Type

from stable_baselines3.common.callbacks import BaseCallback

from core.analysis import get_module_statistics, extract_op_code_counts_from_dicts, \
    extract_structural_counts_from_dicts
from core.config.config import MAX_BLOCKS_PER_FUNCTION
from core.constraints import FuelConstraint
from core.corpus import ProgramCorpus
from core.extractor import wat_to_trigrams
from core.metrics import make_feature_vector
from core.processor import StackInspectorPostProcessor, FlagReachabilityPostProcessor
from core.runner import AbstractRunResult
from core.state.state import GlobalState
from core.tile import AbstractTile
from core.value import Val, I32, I64, F32, F64
from drl.cache import ProgramCache

GLOBAL_CORPUS = ProgramCorpus()
class AbstractRewardFunction:

    def __call__(self, finish_state: str | Exception, global_state: GlobalState, wat_str: str, run_result: AbstractRunResult, p: float, last_placed_tile: Type[AbstractTile]):
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


def combine_rewards(
    r_align:  float,
    r_nov:    float,
    r_len:    float,
    r_depth:  float,
    r_flag:   float,
    r_values: float,
    step_frac: float,          #  fraction of total training
) -> float:

    if step_frac < 0.10:
        w = dict(align=0.05, nov=0.30, len=0.20,
                 depth=0.20, flag=0.15, val=0.10)

    elif step_frac < 0.80:
        w = dict(align=0.10, nov=0.25, len=0.20,
                 depth=0.20, flag=0.15, val=0.10)

    else:
        w = dict(align=0.15, nov=0.20, len=0.20,
                 depth=0.20, flag=0.15, val=0.10)

    # safeguard: ensure weights still sum to 1
    #assert abs(sum(w.values()) - 1.0) < 1e-6, "weight vector must sum to 1"

    return (
        w["align"] * r_align  +
        w["nov"]   * r_nov    +
        w["len"]   * r_len    +
        w["depth"] * r_depth  +
        w["flag"]  * r_flag   +
        w["val"]   * r_values
    )


class SimpleRewardFunction(AbstractRewardFunction):

    def __init__(self, target_dir: str, flag_reward: bool = False, depth_reward: bool = False, target_trace_length=30,alignment_only: bool = False):
        self.buffer = ProgramCache(capacity=10_000, out_dir=target_dir)
        self.flags_novelty = flag_reward
        self.depth_reward = depth_reward
        self.target_trace_length = target_trace_length
        self.alignment_only = alignment_only

    def __call__(self, finish_state: str | Exception, global_state: GlobalState, wat_str: str, run_result: AbstractRunResult, p: float, last_placed_tile: Type[AbstractTile]):
        fuel_constraint = global_state.constraints[FuelConstraint]
        if finish_state == None:
            return 0, None
        if isinstance(finish_state, Exception):
            return -1, None

        if finish_state == "Success":
            print("Finished with constraint", fuel_constraint.resource)
            print("Here comes an wat string")
            alignment_reward = GLOBAL_CORPUS.get_similarity(wat_str)
            for post_processor in run_result.post_processors:
                if isinstance(post_processor, StackInspectorPostProcessor):
                    print("Got values in inspector:", [str(val) for val in post_processor.stack_inspector_tile.stack_values])
                if isinstance(post_processor, FlagReachabilityPostProcessor):
                    print("Can reach the following flags:", [f"{val.flag_name}:"+str(val.flag_value) for val in post_processor.flag_tiles])
            if self.depth_reward:
                block_depth_tuples = global_state.get_all_blocks()
                block_depth_sum = sum((depth**0.5) * math.log1p(len(block.tiles)) for block, depth in block_depth_tuples)
                MAX_POSSIBLE_BLOCK_DEPTH = (MAX_BLOCKS_PER_FUNCTION**0.5) * math.log1p(fuel_constraint.max_target)
                #print("Block depth:", block_depth_tuples)
                block_bread_sum = sum(len(block.tiles) for block, depth in block_depth_tuples)
                MAX_POSSIBLE_BLOCK_BREADTH = fuel_constraint.max_target
                block_classes = set()
                for block, depth in block_depth_tuples:
                    block_classes.add(block.type)
                diversity = len(block_classes)
                block_depth_reward = (max(0,(block_depth_sum/MAX_POSSIBLE_BLOCK_DEPTH)*0.5) +
                                      max(0,(block_bread_sum/MAX_POSSIBLE_BLOCK_BREADTH)*0.3) + (diversity/4)*0.2)
            else:
                block_depth_reward = 0
            module_statistics = get_module_statistics(wat_str)
            module_opcode = extract_op_code_counts_from_dicts([module_statistics])[0]
            module_stats = extract_structural_counts_from_dicts([module_statistics])[0]
            trigrams = wat_to_trigrams(wat_str)

            feature_vect = make_feature_vector(module_opcode, module_stats,trigrams)
            novelty_reward = self.buffer.novelty(feature_vect)
            unique_tiles = set()
            for tile_arrays in global_state.get_all_tile_arrays():
                for tile in tile_arrays:
                    unique_tiles.add(tile.name)
            print("Unique tiles", len(unique_tiles))
            novelty_reward = novelty_reward*0.5 + min(len(unique_tiles)/100, 1)*0.5


            flag_reward = 0
            flag_states = {}
            stack_values = []
            if self.flags_novelty:
                false_flags = 0
                true_flags = 0
                found = False
                for post_processor in run_result.post_processors:
                    if isinstance(post_processor, FlagReachabilityPostProcessor):
                        found = True
                        for flag in post_processor.flag_tiles:
                            flag_states[flag.flag_name] = flag.flag_value
                            if flag.flag_value:
                                true_flags += 1
                            else:
                                false_flags += 1
                if not found:
                    raise Exception("Flag reward is set but no flag reachability post processor found!")
                #High reward if flags are half true and half false
                def balance_reward(k: int, j: int) -> float:
                    n = k + j
                    if n == 0 or n == 1:
                        return 0.0
                    p = k / n
                    return 4.0 * p * (1.0 - p)
                flag_count_reward = len(flag_states)/5
                flag_reward = balance_reward(true_flags, false_flags)*0.5 + flag_count_reward*0.5
                print("Flag reward", flag_reward)
            for post_processor in run_result.post_processors:
                if isinstance(post_processor, StackInspectorPostProcessor):
                    stack_values = post_processor.stack_inspector_tile.stack_values
            return_values_with_type = [val_type(val) for val, val_type in zip(run_result.return_values, run_result.return_types)]

            output_and_stack_value_classes = {}
            value_count = 0
            for val in return_values_with_type + stack_values:
                if isinstance(val, Val):
                    if isinstance(val,I32) or isinstance(val,I64) or isinstance(val,F32) or isinstance(val,F64):
                        value_count += 1
                        value = float(val.value)
                        if value not in output_and_stack_value_classes:
                            output_and_stack_value_classes[value] = 1
                        else:
                            output_and_stack_value_classes[value] += 1
                    else:
                        if val.value not in output_and_stack_value_classes:
                            output_and_stack_value_classes[val.value] = 1
                        else:
                            output_and_stack_value_classes[val.value] += 1
                else:
                    raise Exception("Value is not a Val type")

            #Count different values compared to total values
            value_reward = len(output_and_stack_value_classes)/max(1,value_count)

            length_reward = min(self.target_trace_length, run_result.fuel)/self.target_trace_length
            print("P", p)
            if not self.alignment_only:
                total_reward = combine_rewards(alignment_reward, novelty_reward, length_reward, block_depth_reward, flag_reward,value_reward, p)
            else:
                total_reward = alignment_reward*0.99 + novelty_reward*0.01
            self.buffer.add(feature_vect, wat_str, self.buffer.build_meta(total_reward, flag_states, return_values_with_type, stack_values))
            return total_reward, {"raw_alignment_reward": alignment_reward, "raw_novelty_reward": novelty_reward, "raw_flag_reward": flag_reward, "raw_length_reward": length_reward, "raw_max_block_depth_reward": block_depth_reward, "raw_value_reward": value_reward}
        return 0, None
