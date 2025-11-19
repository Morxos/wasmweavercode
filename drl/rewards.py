import json
import math
import os
from typing import Type, List

from stable_baselines3.common.callbacks import BaseCallback
from core.corpus import ProgramCorpus
from core.debug.debugger import generate_trace_list
from core.processor import StackInspectorPostProcessor, FlagReachabilityPostProcessor
from core.runner import AbstractRunResult
from core.state.state import GlobalState
from core.tile import AbstractTile
from curriculum import CurriculumInstance
from experiments.eval.judge import judge_wasm_result_string
from experiments.eval.models.model import Model

GLOBAL_CORPUS = ProgramCorpus()

class AbstractRewardFunction:

    def __call__(self, finish_state: str | Exception, global_state: GlobalState,last_global_state: GlobalState, wat_str: str, run_result: AbstractRunResult, p: float, last_placed_tile: Type[AbstractTile], dynamic_targets:CurriculumInstance = None):
        return 0, {}

class PartialRewardCallback(BaseCallback):
    """
    Used for logging partial rewards from the environment infos.
    """
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

def calc_diff_reward(fuel_used, target_fuel):
    return math.exp(-abs((fuel_used / target_fuel) - 1))

def calculate_max_dynamic_depth(trace: List[str]):
    """
    Calculate the maximum dynamic depth of nested blocks in the execution trace.
    """
    depth = 0
    max_depth = 0
    for inst in trace:
        if inst in ["START_BlockTile", "START_LoopTile", "START_ConditionTile", "START_CreateFunctionTile","START_FunctionCallTile","START_FunctionIndirectCallTile"]:
            depth += 1
        elif inst in ["END_BlockTile", "END_LoopTile", "END_ConditionTile", "END_CreateFunctionTile","END_FunctionCallTile","END_FunctionIndirectCallTile"]:
            depth -= 1
        if depth > max_depth:
            max_depth = depth
    return max_depth




class SimpleRewardFunction(AbstractRewardFunction):
    """
    A simple reward function that provides rewards based on fuel usage and similarity to a target corpus.
    """
    def __init__(self, target_dir: str, stack_reward: bool, flag_reward: bool, model: Model):
        self.stack_reward = stack_reward
        self.flag_reward = flag_reward
        self.model = model
        self.good_samples = 0
        self.target_dir = target_dir

    def __call__(self, finish_state: str | Exception, global_state: GlobalState, last_global_state: GlobalState, wat_str: str, run_result: AbstractRunResult, p: float, last_placed_tile: Type[AbstractTile], dynamic_targets: CurriculumInstance = None):

        # No finish state reached
        if finish_state == None:
            return 0, None

        # If finish state is an exception, return -1 reward
        if isinstance(finish_state, Exception):
            # Check if directory exists
            if self.stack_reward:
                directory = "stack_output_"+self.model.dir_name
                if not os.path.exists(os.path.join(directory)):
                    os.makedirs(os.path.join(directory))
                result_dict = {
                    "step": p,
                    "reward": -1,
                }
                name = str(p)+"_"+str(-1)+".json"
                with open(os.path.join(directory,name), "w") as f:
                    json.dump(result_dict, f)
            elif self.flag_reward:
                directory = "flags_output_"+self.model.dir_name
                if not os.path.exists(os.path.join(directory)):
                    os.makedirs(os.path.join(directory))
                result_dict = {
                "step": p,
                "reward": -1,
                }
                name = str(p)+"_"+str(-1)+".json"
                with open(os.path.join(directory,name), "w") as f:
                    json.dump(result_dict, f)
            else:
                directory = self.target_dir
                if not os.path.exists(os.path.join(directory)):
                    os.makedirs(os.path.join(directory))
                result_dict = {
                    "step": p,
                    "reward": -1,
                }
                self.good_samples  = max(0,self.good_samples-1)
                name = str(p) + "_" + str(-1) + ".json"
                with open(os.path.join(directory, name), "w") as f:
                    json.dump(result_dict, f)

            return -1, None

        if finish_state == "Success":
            target_fuel = dynamic_targets.current_objective_values[0]
            depth_target = dynamic_targets.current_objective_values[1]
            print("Target fuel:", target_fuel)
            print("Depth target:", depth_target)
            if self.stack_reward:
                stack_post_processor: StackInspectorPostProcessor = run_result.post_processors[0]
                values = stack_post_processor.stack_inspector_tile.stack_values
                meta_dict = {"stack_values":  [{"type":val.get_wasm_type(),"value":str(val.value)} for val in values]}
                res, resp = judge_wasm_result_string(meta_dict, wat_str, self.model, "stack")
                reward = 0
                for s in res:
                    if "error" in s.lower():
                        reward += 1

                name = str(p)+"_"+str(reward)+".json"
                directory = "stack_output_"+self.model.dir_name
                if not os.path.exists( os.path.join(directory) ):
                    os.makedirs( os.path.join(directory) )
                result_dict = {
                    "step":p,
                    "reward":reward,
                    "stack_values": [{"type":val.get_wasm_type(),"value":str(val.value)} for val in values],
                    "wat_str": wat_str,
                    "trace": generate_trace_list(global_state),
                    "result":res,
                    "response":resp,
                    "meta_dict":meta_dict,
                }
                #Save to json
                json.dump(result_dict, open(os.path.join(directory, name), "w"))

                return reward, {}

            elif self.flag_reward:
                flag_post_processor: FlagReachabilityPostProcessor = run_result.post_processors[0]
                target_dict = {}
                flags = flag_post_processor.flag_tiles
                for flag in flags:
                    target_dict[flag.flag_name] = str(flag.flag_value)

                meta_dict = {"flag_states":  target_dict}
                res, resp = judge_wasm_result_string(meta_dict, wat_str, self.model, "flags")
                reward = 0
                for s in res:
                    if "error" in s.lower():
                        reward += 1
                name = str(p)+"_"+str(reward)+".json"
                #Check if directory exists
                directory = "flags_output_"+self.model.dir_name
                if not os.path.exists( os.path.join(directory) ):
                    os.makedirs( os.path.join(directory) )
                result_dict = {
                    "step": p,
                    "wasm_flags": target_dict,
                    "wat_string": wat_str,
                    "trace": generate_trace_list(global_state),
                    "reward":reward,
                    "result":res,
                    "response":resp,
                    "meta_dict":meta_dict,
                }
                #Save to json
                json.dump(result_dict, open(os.path.join(directory, name), "w"))
                return reward, {}

            else:

                length_reward = calc_diff_reward(run_result.fuel, target_fuel)
                module_reward, bucket_reward, trigram_reward = GLOBAL_CORPUS.get_similarity(wat_str)

                # Dynamic nesting depth reward
                trace = generate_trace_list(global_state)
                depth_reward = calc_diff_reward(global_state.get_max_block_depth(), depth_target)
                combined_reward = module_reward + length_reward
                # Save to file
                name = str(p)+"_"+str(combined_reward)+".json"
                # Check if directory exists
                directory = self.target_dir
                if not os.path.exists( os.path.join(directory) ):
                    os.makedirs( os.path.join(directory) )
                result_dict = {
                    "step":p,
                    "trace": trace,
                    "wat_str": wat_str,
                    "reward":combined_reward,
                    "length_reward": length_reward,
                    "used_fuel": run_result.fuel,
                    "target_fuel": target_fuel,
                    "module_reward": module_reward,
                    "good_samples": self.good_samples,
                    "bucket_reward": bucket_reward,
                    "dynamic_depth_reward": depth_reward,
                    "depth_target": depth_target,
                }
                #Save to json
                json.dump(result_dict, open(os.path.join(directory, name), "w"))

                if combined_reward > 0.5: # Threshold for good samples
                    self.good_samples += 1
                    print("Good samples so far:", self.good_samples)
                if self.good_samples > 1:
                    dynamic_targets.increase_difficulty()
                    self.good_samples = 0

                return combined_reward, {
                    "length_reward": length_reward,
                    "length_abs_diff": abs((run_result.fuel-target_fuel)),
                    "depth_abs_diff": abs((calculate_max_dynamic_depth(trace)-depth_target)),
                    "target_fuel": target_fuel,
                    "used_fuel": run_result.fuel,
                    "module_reward": module_reward,
                    "bucket_reward": bucket_reward,
                    "dynamic_depth_reward": depth_reward,
                }

