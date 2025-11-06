import json
import math
import os
import time
from typing import Type, Dict, List

from stable_baselines3.common.callbacks import BaseCallback

from core.analysis import wat_to_wasm
from core.config.config import MAX_FUNCTION_CALL_DEPTH
from core.constraints import FuelConstraint
from core.corpus import ProgramCorpus
from core.debug.debugger import generate_trace_list
from core.processor import StackInspectorPostProcessor, FlagReachabilityPostProcessor
from core.runner import AbstractRunResult
from core.state.state import GlobalState
from core.tile import AbstractTile
from drl.cache import ProgramCache
from experiments.eval.judge import judge_wasm_result_string
from experiments.eval.models.model import Model
from experiments.eval.models.openai_models import Gpt41

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

def calc_diff_reward(fuel_used, target_fuel):
    return math.exp(-abs((fuel_used / target_fuel) - 1))

def calculate_dynamic_cyclomatic_complexity(trace: List[str]):
    decisions = 0
    for inst in trace:
        if inst in ["START_ConditionTile","START_LoopTile","START_BrTableTile","START_BrIfTile"]:
            decisions += 1
    return decisions/math.sqrt(len(trace))

def calculate_max_dynamic_depth(trace: List[str]):
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

def calculate_dynamic_decision_events(trace: List[str]):
    decisions = 0
    for inst in trace:
        if inst in ["START_ConditionTile"]:
            decisions += 1
    return decisions/math.sqrt(len(trace))

def loop_total_instruction_count(trace: List[str]):
    instructions = 0
    is_inside_loop = 0
    for inst in trace:
        if inst in ["START_LoopTile"]:
            is_inside_loop += 1
        elif inst in ["END_LoopTile"]:
            is_inside_loop -= 1
        if is_inside_loop > 0 and inst not in ["START_LoopTile","END_LoopTile"]:
            instructions += 1
    return instructions/math.sqrt(len(trace))

def calculate_max_dynamic_call_depth(trace: List[str]):
    depth = 0
    max_depth = 0
    for inst in trace:
        if inst in ["START_CreateFunctionTile","START_FunctionCallTile","START_FunctionIndirectCallTile"]:
            depth += 1
        elif inst in ["END_CreateFunctionTile","END_FunctionCallTile","END_FunctionIndirectCallTile"]:
            depth -= 1
        if depth > max_depth:
            max_depth = depth
    return max_depth/MAX_FUNCTION_CALL_DEPTH




class SimpleRewardFunction(AbstractRewardFunction):

    def __init__(self, target_dir: str, stack_reward: bool, flag_reward: bool, result_reward: bool, model: Model):
        self.buffer = ProgramCache(capacity=10_000, out_dir=target_dir)
        self.corpus = ProgramCorpus()
        self.stack_reward = stack_reward
        self.flag_reward = flag_reward
        self.result_reward = result_reward
        self.model = model

    def __call__(self, finish_state: str | Exception, global_state: GlobalState, last_global_state: GlobalState, wat_str: str, run_result: AbstractRunResult, p: float, last_placed_tile: Type[AbstractTile], dynamic_targets:Dict = None):
        #fuel_constraint = global_state.constraints[FuelConstraint]
        #print("Fuel stats:",global_state.constraints[FuelConstraint].resource, last_global_state.constraints[FuelConstraint].resource, len(global_state.stack.stack_frames))

        other_name = "other_output"

        if finish_state == None:
            return 0, None
        if isinstance(finish_state, Exception):
            #Check if directory exists
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
            elif self.result_reward:
                directory = "result_output_"+self.model.dir_name
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
                directory = other_name
                if not os.path.exists(os.path.join(directory)):
                    os.makedirs(os.path.join(directory))
                result_dict = {
                    "step": p,
                    "reward": -1,
                }
                name = str(p) + "_" + str(-1) + ".json"
                with open(os.path.join(directory, name), "w") as f:
                    json.dump(result_dict, f)
            return -1, None

        if finish_state == "Success":
            target_fuel = dynamic_targets["fuel_target"]
            depth_target = dynamic_targets.get("depth_target", None)
            if self.stack_reward:
                stack_post_processor: StackInspectorPostProcessor = run_result.post_processors[0]
                values = stack_post_processor.stack_inspector_tile.stack_values
                meta_dict = {"stack_values":  [{"type":val.get_wasm_type(),"value":str(val.value)} for val in values]}
                print("Meta dict:", meta_dict)
                res, resp = judge_wasm_result_string(meta_dict, wat_str, self.model, "stack")
                print(res)
                #Count how often error strings are mentioned
                reward = 0
                for s in res:
                    if "error" in s.lower():
                        reward += 1

                print("P",p)
                name = str(p)+"_"+str(reward)+".json"
                #Check if directory exists
                directory = "stack_output_"+self.model.dir_name
                if not os.path.exists( os.path.join(directory) ):
                    os.makedirs( os.path.join(directory) )
                result_dict = {
                    "step":p,
                    "reward":reward,
                    "stack_values": [{"type":val.get_wasm_type(),"value":str(val.value)} for val in values],
                    "wat_str": wat_str,
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
                print("Meta dict:", meta_dict)
                res, resp = judge_wasm_result_string(meta_dict, wat_str, self.model, "flags")
                print(res)
                #Count how often error strings are mentioned
                reward = 0
                for s in res:
                    if "error" in s.lower():
                        reward += 1

                print("P",p)
                name = str(p)+"_"+str(reward)+".json"
                #Check if directory exists
                directory = "flags_output_"+self.model.dir_name
                if not os.path.exists( os.path.join(directory) ):
                    os.makedirs( os.path.join(directory) )
                result_dict = {
                    "step":p,
                    "wasm_flags": target_dict,
                    "wasm_string": wat_str,
                    "reward":reward,
                    "result":res,
                    "response":resp,
                    "meta_dict":meta_dict,
                }
                #Save to json
                json.dump(result_dict, open(os.path.join(directory, name), "w"))
                return reward, {}

            elif self.result_reward:
                print("Values:",run_result.return_values)
                meta_dict = {"return_values":  [{"type":t.get_wasm_type(),"value":str(val)} for t, val in zip(run_result.return_types,run_result.return_values)]}
                print("Meta dict:", meta_dict)
                res, resp = judge_wasm_result_string(meta_dict, wat_str, self.model, "result")
                print(res)
                #Count how often error strings are mentioned
                reward = 0
                for s in res:
                    if "error" in s.lower():
                        reward += 1

                print("P",p)
                name = str(p)+"_"+str(reward)+".json"
                #Check if directory exists
                directory = "result_output_"+self.model.dir_name
                if not os.path.exists( os.path.join(directory) ):
                    os.makedirs( os.path.join(directory) )
                result_dict = {
                    "step":p,
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

                #binary_length = len(wat_to_wasm(wat_str))
                module_reward, bucket_reward, trigram_reward = self.corpus.get_similarity(wat_str)

                #Dynamic nesting depth reward
                trace = generate_trace_list(global_state)

                depth_reward = calc_diff_reward(calculate_max_dynamic_depth(trace), depth_target)
                #dynamic_call_depth_reward = calculate_max_dynamic_call_depth(trace)
                #dynamic_decision_events = math.tanh(calculate_dynamic_decision_events(trace))
                #loop_instruction_count = math.tanh(loop_total_instruction_count(trace))
                #struct_reward = dynamic_depth_reward + dynamic_call_depth_reward + dynamic_decision_events + loop_instruction_count
                combined_reward = calculate_dynamic_cyclomatic_complexity(trace) + length_reward + module_reward
                #Save to file
                name = str(p)+"_"+str(combined_reward)+".json"
                #Check if directory exists
                directory = other_name
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
                    "bucket_reward": bucket_reward,
                    "dynamic_depth_reward": depth_reward,
                    "depth_target": depth_target,
                    "dynamic_cyclomatic_complexity": calculate_dynamic_cyclomatic_complexity(trace),
                }
                #Save to json
                json.dump(result_dict, open(os.path.join(directory, name), "w"))

                return combined_reward, {
                    "length_reward": length_reward,
                    "length_abs_diff": abs((run_result.fuel-target_fuel)),
                    "depth_abs_diff": abs((calculate_max_dynamic_depth(trace)-depth_target)),
                    "target_fuel": target_fuel,
                    "used_fuel": run_result.fuel,
                    "module_reward": module_reward,
                    "bucket_reward": bucket_reward,
                    "dynamic_depth_reward": depth_reward,
                    "dynamic_cyclomatic_complexity": calculate_dynamic_cyclomatic_complexity(trace),
                }
            #return combined_reward, {"length_reward": length_reward,
            #                       "length_abs_diff": abs((run_result.fuel-target_fuel)),
            #                         "binary_size_abs_diff": abs((binary_length-target_binary_size)),
            #                       "target_fuel": target_fuel,
            #                          "target_binary_size": target_binary_size,
            #                       "used_fuel": run_result.fuel,
            #                       "module_reward": module_reward,
            #                       "bucket_reward": bucket_reward,
            #                         "struct_reward": struct_reward,
            #                         "dynamic_depth_reward": dynamic_depth_reward,
            #                            "dynamic_call_depth_reward": dynamic_call_depth_reward,
            #                            "dynamic_decision_events": dynamic_decision_events,
            #                            "loop_instruction_count": loop_instruction_count,
            #                          "trigram_reward": trigram_reward}
        #raise Exception("Should not reach here")
