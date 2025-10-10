import json
import math
from pathlib import Path
from typing import Literal, List, Dict, Tuple

import numpy as np

from experiments.eval.models.model import Model

def generate_reachability_prompt():
    reachability_prompt = """
You are a WebAssembly expert. You analyze code and return the reachability of specific flags in the code.

Example:

(module
  (func (export "run")
    ;;FLAG_0
    i32.const 3
    i32.const 4
    return
    ;;FLAG_1
    drop)
)

Expected output:

<OUTPUT>{"flag_states": {"FLAG_0": true,"FLAG_1": false}}</OUTPUT>

Task:

Execute the following WAT module's 'run' function symbolically, step‑by‑step.

Keep track of the the flags you are reaching during execution and which ones you are not.

Do not actually run code or use external tools or Python—think it through yourself.

Return the result as a JSON in the exact format:
<OUTPUT>{"flag_states": {"FLAG_0": true,"FLAG_1": false, ...}}</OUTPUT>
– the keys must be the flag names (e.g. FLAG_0, FLAG_1).
– the values must be true or false, depending on whether the flag was reached or not.
- when you return directly before a flag, it is not reached.
- report each flag exactly once, even if it is reached multiple times.

The last line must be your answer in json form with the <OUTPUT> ... </OUTPUT> wrapper.
"""
    return reachability_prompt

def generate_stack_prompt():
    stack_prompt = """
You are a WebAssembly expert. You analyze code and return the operand stack at a specific point in time.

Example:

(module
  (func (export "run")
    i32.const 3
    i32.const 4
    ;;INSPECT
    drop)
)

Expected output:

<OUTPUT>{"stack_values":[{"type":"i32","value":3},{"type":"i32","value":4}]}</OUTPUT>

Task:

Execute the following WAT module's 'run' function symbolically, step‑by‑step, until just before the comment ;;INSPECT.

At each point keep track of the values on the operand stack.

At that moment of ;;INSPECT, capture the entire operand stack exactly as it stands at this point in time, in order from bottom to top.

Do not actually run code or use external tools or Python—think it through yourself.

Return the result as a JSON in the exact format:

<OUTPUT>{"stack_values":[{"type":"i32","value":55}, ...]}</OUTPUT>
– type must be the WebAssembly value type (i32, i64, f32, f64, funcref).
– value must be the precise numeric value (signed where appropriate) or 'Null' / the functions actual name for the funcref type that resides on the stack.

The last line must be your answer in json form with the <OUTPUT> ... </OUTPUT> wrapper.
"""
    return stack_prompt

def generate_result_estimation_prompt():
    stack_prompt = """
You are a WebAssembly expert. You analyze code and return the values and types of the functions return values.

Example:

(module
  (func (export "run") (result i32 i32)
    i32.const 3
    i32.const 4)
)

Expected output:

<OUTPUT>{"return_values":[{"type":"i32","value":3},{"type":"i32","value":4}]}</OUTPUT>

Task

1. Symbolically execute the 'run' function of the module below until it finishes (all instructions executed, control returns to the caller).
2. When execution ends, capture the tuple of values that are returned (ordered first to last as defined by the function’s (result ...) list).
3. Do not run real code or use external tools. Reason it out yourself.

Output format
Return one single line of plain text exactly like this:

<OUTPUT>{"return_values":[{"type":"i32","value":55}, ...]}</OUTPUT>

type must be one of: i32, i64, f32, f64, funcref.
value is the precise numeric literal (signed for integers, IEEE‑754 for floats) or the actual function name / "Null" for funcref.

The last line must be your answer in json form with the <OUTPUT> ... </OUTPUT> wrapper.
"""
    return stack_prompt

def judge_wasm_result(meta_file_path: str,
                      wat_file_path: str,
                      model: Model | str,
                      target: Literal["stack", "flags", "result"])->Tuple[List[str],str]:

    meta_file_path = json.loads(Path(meta_file_path).read_text())
    wat_file_path = Path(wat_file_path).read_text()
    if not isinstance(model, str):
        if target == "stack":
            complete_prompt = generate_stack_prompt() + "\n Here comes the WAT file: " + wat_file_path
        elif target == "flags":
            complete_prompt = generate_reachability_prompt() + "\n Here comes the WAT file: " + wat_file_path
        elif target == "result":
            complete_prompt = generate_result_estimation_prompt() + "\n Here comes the WAT file: " + wat_file_path
        else:
            raise NotImplementedError
        while True:
            try:
                output = model.predict(complete_prompt)
                print("Model output:", output)
                break
            except Exception as e:
                print(f"Error while running model: {e}")
                print("Retrying...")
    else:
        output = model
    if target == "stack":
        target_stack = meta_file_path["stack_values"]
        return compare_stack_results_with_model_output(target_stack, output), output
    elif target == "flags":
        target_flags = meta_file_path["flag_states"]
        return compare_flag_with_model_output(target_flags, output), output
    elif target == "result":
        target_result = meta_file_path["return_values"]
        return compare_stack_results_with_model_output(target_result, output, dict_key="return_values"), output
    else:
        raise NotImplementedError

def judge_wasm_result_string(meta_dict: dict,
                      wat_string: str,
                      model: Model | str,
                      target: Literal["stack", "flags", "result"])->Tuple[List[str],str]:

    if not isinstance(model, str):
        if target == "stack":
            complete_prompt = generate_stack_prompt() + "\n Here comes the WAT file: " + wat_string
        elif target == "flags":
            complete_prompt = generate_reachability_prompt() + "\n Here comes the WAT file: " + wat_string
        elif target == "result":
            complete_prompt = generate_result_estimation_prompt() + "\n Here comes the WAT file: " + wat_string
        else:
            raise NotImplementedError
        while True:
            try:
                output = model.predict(complete_prompt)
                print("Model output:", output)
                break
            except Exception as e:
                print(f"Error while running model: {e}")
                print("Retrying...")
    else:
        output = model
    if target == "stack":
        target_stack = meta_dict["stack_values"]
        return compare_stack_results_with_model_output(target_stack, output), output
    elif target == "flags":
        target_flags = meta_dict["flag_states"]
        return compare_flag_with_model_output(target_flags, output), output
    elif target == "result":
        target_result = meta_dict["return_values"]
        return compare_stack_results_with_model_output(target_result, output, dict_key="return_values"), output
    else:
        raise NotImplementedError

def are_almost_equal(a, b, tolerance=1e-5): #Large value here
    return math.isclose(a, b, rel_tol=tolerance, abs_tol=tolerance)

def same_i64_bit_pattern(a: int, b: int) -> bool:
    # Mask to lower 64 bits, to simulate 64-bit wrapping
    a_bits = np.uint64(a & 0xFFFFFFFFFFFFFFFF)
    b_bits = np.uint64(b & 0xFFFFFFFFFFFFFFFF)
    return a_bits == b_bits

def same_i32_bit_pattern(a: int, b: int) -> bool:
    a_bits = np.uint32(a & 0xFFFFFFFF)
    b_bits = np.uint32(b & 0xFFFFFFFF)
    return a_bits == b_bits

def compare_flag_with_model_output(
    target: Dict[str,str],
    model_output: str,
):
    #Check if start and end labels are in the model output
    if not all(label in model_output for label in ["<OUTPUT>", "</OUTPUT>"]):
        print("Got model output:", model_output)
        print("Model output does not contain start and end labels")
        return ["error_labels"]
    #Check if the model output is a valid JSON
    try:
        errors = []
        json_part = model_output.split("<OUTPUT>")[-1].split("</OUTPUT>")[0]
        print("Model json response:", json_part)
        print("Reference flags:", target)
        model_output = json.loads(json_part)
        model_output = model_output["flag_states"]
        #Check sizes
        if len(target) != len(model_output):
            print(f"Flag length mismatch: {len(target)} != {len(model_output)}")
            errors.append("error_length")
        for target_flag_name in target:
            if target_flag_name not in model_output:
                print(f"Flag {target_flag_name} not found in model output")
                errors.append(f"error_flag_{target_flag_name}")
                #errors.append(f"error_value_{target_flag_name}")
            else:
                errors.append("success_flag_"+target_flag_name)
                if str(target[target_flag_name]).lower() != str(model_output[target_flag_name]).lower():
                    print(f"Flag {target_flag_name} mismatch: {target[target_flag_name]} != {model_output[target_flag_name]}")
                    errors.append(f"error_value_{target_flag_name}")
                else:
                    errors.append("success_value_"+target_flag_name)
                    print(f"Flag {target_flag_name} match: {target[target_flag_name]} == {model_output[target_flag_name]}")

        return errors

    except json.JSONDecodeError as e:
        print(f"Model output is not a valid JSON: {e}")
        return ["error_json"]
    except Exception as e:
        print(f"Error while comparing flags: {e}")
        return ["error_unknown"]

def compare_stack_results_with_model_output(
    target: List[Dict[str,bool]],
    model_output: str,
    dict_key: str = "stack_values",
):
    #Check if start and end labels are in the model output
    if not all(label in model_output for label in ["<OUTPUT>", "</OUTPUT>"]):
        print("Got model output:", model_output)
        print("Model output does not contain start and end labels")
        return ["error_labels"]
    #Check if the model output is a valid JSON
    try:
        json_part = model_output.split("<OUTPUT>")[1].split("</OUTPUT>")[0]
        print("Model json response:", json_part)
        print("Reference:", target)
        model_output = json.loads(json_part)
        model_output_stack = model_output[dict_key]
        results = list()
        if len(target) != len(model_output_stack):
            print(f"Stack length mismatch: {len(target)} != {len(model_output_stack)}")
            results.append("error_length")
        i = 0
        for stack_value_dict, model_value_dict in zip(target, model_output_stack):
            if stack_value_dict["type"].lower() != model_value_dict["type"].lower():
                print(f"Type mismatch: {stack_value_dict['type']} != {model_value_dict['type']}")
                results.append(f"error_type_{stack_value_dict['type']}_{i}")
            else:
                print(f"Type match: {stack_value_dict['type']} == {model_value_dict['type']}")
                results.append(f"success_type_{stack_value_dict['type']}_{i}")

            if stack_value_dict["type"].lower() == "i32":
                #Check if values can be converted to int
                try:
                    int(stack_value_dict["value"])
                    int(model_value_dict["value"])
                except ValueError:
                    print(f"Value conversion error: {stack_value_dict['value']} or {model_value_dict['value']}")
                    results.append(f"error_value_{stack_value_dict['type']}_{i}")
                    continue
                if not same_i32_bit_pattern(int(stack_value_dict["value"]), int(model_value_dict["value"])):
                    print(f"Value mismatch: {stack_value_dict['value']} != {model_value_dict['value']}")
                    results.append(f"error_value_{stack_value_dict['type']}_{i}")
                else:
                    print(f"Value match: {stack_value_dict['value']} == {model_value_dict['value']}")
                    results.append(f"success_value_{stack_value_dict['type']}_{i}")

            elif stack_value_dict["type"].lower() == "i64":
                #Check if values can be converted to int
                try:
                    int(stack_value_dict["value"])
                    int(model_value_dict["value"])
                except ValueError:
                    print(f"Value conversion error: {stack_value_dict['value']} or {model_value_dict['value']}")
                    results.append(f"error_value_{stack_value_dict['type']}_{i}")
                    continue
                if not same_i64_bit_pattern(int(stack_value_dict["value"]), int(model_value_dict["value"])):
                    print(f"Value mismatch: {stack_value_dict['value']} != {model_value_dict['value']}")
                    results.append(f"error_value_{stack_value_dict['type']}_{i}")
                else:
                    print(f"Value match: {stack_value_dict['value']} == {model_value_dict['value']}")
                    results.append(f"success_value_{stack_value_dict['type']}_{i}")

            elif stack_value_dict["type"].lower() == "f32" or stack_value_dict["type"].lower() == "f64":
                #Check if values can be converted to float
                try:
                    #Check if both values are NaN or inf
                    if str(stack_value_dict["value"]).lower() == str(model_value_dict["value"]).lower():
                        if str(stack_value_dict["value"]).lower() in ["nan", "inf", "-inf"]:
                            print(f"Value match: {stack_value_dict['value']} == {model_value_dict['value']}")
                            results.append(f"success_value_{stack_value_dict['type']}_{i}")
                            continue

                    float(stack_value_dict["value"])
                    float(model_value_dict["value"])
                except ValueError:
                    print(f"Value conversion error: {stack_value_dict['value']} or {model_value_dict['value']}")
                    results.append(f"error_value_{stack_value_dict['type']}_{i}")
                    continue
                if not are_almost_equal(float(stack_value_dict["value"]),float(model_value_dict["value"])):
                    print(f"Value mismatch: {stack_value_dict['value']} != {model_value_dict['value']}")
                    results.append(f"error_value_{stack_value_dict['type']}_{i}")
                else:
                    print(f"Value match: {stack_value_dict['value']} == {model_value_dict['value']}")
                    results.append(f"success_value_{stack_value_dict['type']}_{i}")
            elif stack_value_dict["type"].lower() == "funcref":
                if stack_value_dict["value"]!= model_value_dict["value"]:
                    results.append(f"error_value_{stack_value_dict['type']}_{i}")
                else:
                    print(f"Value match: {stack_value_dict['value']} == {model_value_dict['value']}")
                    results.append(f"success_value_{stack_value_dict['type']}_{i}")
            else:
                print(f"Unknown type: {stack_value_dict['type']}")
                return ["unknown_type"]
            i += 1
        return results
    except json.JSONDecodeError as e:
        print(f"Model output is not a valid JSON: {e}")
        return ["error_json"]
    except Exception as e:
        print(f"Error while comparing stack: {e}")
        return ["error_unknown"]