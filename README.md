# WasmWeaver: DRL-Guided WebAssembly Program Generation for Execution Reasoning
This flexible random program generator produces pseudo-random correct WebAssembly code that always runs to completion without exceptions, while being guided by a DRL policy.
Furthermore, soft lower (not used by the DRL agent) and hard upper limits (dependent on the correctness of the internal fuel and bytecode size models) are applied during generation to ensure that the generated code stays within the bounds of the given use cases.

This document contains the following information:

- Overview of currently supported instructions, concepts, and extensions
- Basic setup and evaluation guides for experiments
- The custom gymnasium environment

### Supported Instructions & Extensions

At this time, we support most instructions and high-level concepts of WebAssembly 1.0 and 2.0 (except for vector instructions and bulk memory instructions). The following instructions are already supported::
##### Control Flow Instructions
- [x] block
- [x] functions (also external functions, but those are not used in these experiments)
- [x] loop: Only simple bounded/unbounded (also nested) for loops are supported.
- [x] br, br_if, br_table
- [x] if, else
- [x] return: Will be supported in the future
- [ ] unreachable: Can easily be implemented, but not needed for the current experiments/benchmarks

##### Basic Instructions
- [x] nop
- [x] drop
- [x] const
- [x] local.get, local.set, local.tee
- [x] global.get, global.set
- [x] select
- [x] call
- [x] call_indirect

##### Integer Arithmetic Instructions

- [x] i32/i64.add
- [x] i32/i64.sub
- [x] i32/i64.mul
- [x] i32/i64.div_s
- [x] i32/i64.div_u
- [x] i32/i64.rem_s
- [x] i32/i64.rem_u
- [x] i32/i64.and
- [x] i32/i64.or
- [x] i32/i64.xor
- [x] i32/i64.shl
- [x] i32/i64.shr_s
- [x] i32/i64.shr_u
- [x] i32/i64.rotl
- [x] i32/i64.rotr
- [x] i32/i64.clz
- [x] i32/i64.ctz
- [x] i32/i64.popcnt
- [x] i32/i64.eqz

##### Floating Point Arithmetic Instructions
- [x] f32/f64.add
- [x] f32/f64.sub
- [x] f32/f64.mul
- [x] f32/f64.div
- [x] f32/f64.sqrt
- [x] f32/f64.min
- [x] f32/f64.max
- [x] f32/f64.ceil
- [x] f32/f64.floor
- [x] f32/f64.trunc
- [x] f32/f64.nearest
- [x] f32/f64.abs
- [x] f32/f64.neg
- [x] f32/f64.copysign

##### Integer Comparison Instructions
- [x] i32/i64.eq
- [x] i32/i64.ne
- [x] i32/i64.lt_s
- [x] i32/i64.lt_u
- [x] i32/i64.le_s
- [x] i32/i64.le_u
- [x] i32/i64.gt_s
- [x] i32/i64.gt_u
- [x] i32/i64.ge_s
- [x] i32/i64.ge_u

##### Floating Point Comparison Instructions
- [x] f32/f64.eq
- [x] f32/f64.ne
- [x] f32/f64.lt
- [x] f32/f64.le
- [x] f32/f64.gt
- [x] f32/f64.ge

##### Conversion Instructions
- [x] i32.wrap_i64
- [x] i64.extend_i32_s
- [x] i64.extend_i32_u
- [x] i32.trunc_f32_s
- [x] i32.trunc_f32_u
- [x] i32.trunc_f64_s
- [x] i32.trunc_f64_u
- [x] f32.demote_f64
- [x] f64.promote_f32
- [x] f32.convert_i32_s
- [x] f32.convert_i64_s
- [x] f64.convert_i32_s
- [x] f64.convert_i64_s
- [x] f32.convert_i32_u
- [x] f32.convert_i64_u
- [x] f64.convert_i32_u
- [x] f64.convert_i64_u
- [x] i32.reinterpret_f32
- [x] i64.reinterpret_f64
- [x] f32.reinterpret_i32
- [x] f64.reinterpret_i64
- [x] i32.extend8_s
- [x] i32.extend16_s
- [x] i64.extend8_s
- [x] i64.extend16_s
- [x] i64.extend32_s

##### Load and Store Instructions
- [x] i32.load
- [x] i64.load
- [x] f32.load
- [x] f64.load
- [x] i32.store
- [x] i64.store
- [x] f32.store
- [x] f64.store
- [x] i32.load8_s
- [x] i32.load16_s
- [x] i64.load8_s
- [x] i64.load16_s
- [x] i64.load32_s
- [x] i32.load8_u
- [x] i32.load16_u
- [x] i64.load8_u
- [x] i64.load16_u
- [x] i64.load32_u
- [x] i32.store8
- [x] i32.store16
- [x] i64.store8
- [x] i64.store16
- [x] i64.store32

##### Memory Instructions
- [ ] memory.grow: Currently not needed in usecases even when memory tracking is on (which is off in our experiments). Not needed for this work.
- [-] memory.size: Currently always returns 1 (page), due to limited usecases. Due to this its normally disabled.

### Supported Extensions
See Wasm feature list: https://webassembly.org/features/<br>
We implement a few extensions that were useful for our program generation and fuzzing use cases, and which are now part of WebAssembly 2.0:

- Multi-value (https://github.com/WebAssembly/spec/blob/main/proposals/multi-value/Overview.md)
- Reference Types (https://github.com/WebAssembly/reference-types/blob/master/proposals/reference-types/Overview.md)
- Sign-extension Operators (https://github.com/WebAssembly/spec/blob/main/proposals/sign-extension-ops/Overview.md)


### Setup

#### Repository Overview

- 1_stack_effect_samples_test: Contains 500 generated example code snippets for the first stack based reasoning task
- 2_reachability_samples_test: Contains 500 generated samples for the second flag reachability challenge
- 3_result_estimation_samples_test: Contains 500 samples for the third result estimation task
- core: Contains most code for the raw generator, code corpus handling, code metric extraction as well as the implemented code tiles and code tile factories (see core/instructions).
	- Additionally hard feasibility constraints of the generator can be set in **config/config.py**.
	- Our generator is based on **code tiles** and **factories**. Where tiles are used for most normal instructions, factories allow to generate code tiles depending on the current state. (e.g. call <function> tile is only generated when a function is already defined). Abstract classes for both can be found in **core/tile.py**.
	- The implementations of the global state, which tracks stack, linear memory, functions, globals, tables etc. can be found in state/<state.py,globals.py,functions.py, etc.>
	- The gymnasium environment is defined in environment.py
	- analysis.py, metrics.py, and corpus.py contain code for loading and handling various statistics (e.g., opcode distribution, trigram distribution) of different code corpora. Similarity of code samples to a corpus is computed in metrics.py
	- processor.py contains post-processors that are applied to the global state after program generation has finished. Currently, we implement the StackInspectorPostProcessor (Task 1) and the FlagReachabilityPostProcessor (Task 2), which add and evaluate ;;INSPECT and ;;FLAG_N repectively.
	- constraints.py implements our main constraints. Currently we support constraints for fuel, byte code size and abstract response time.
	- strategy.py implements DRL-independent strategies for code tile selection (e.g., a simple random strategy). In the RandomSelectionStrategy example, the generation of blocks, conditions, loops, and functions is deactivated.
	- extractor.py is used to extract trigram information from a given code corpus. The input and output paths can be set at line 138 (path = ...) and line 139 (output_dir = ...).

- drl: Contains all scripts related to deep reinforcement learning (DRL)
	- agents/random_agent.py: Contains an example agent that takes random actions in the WasmWeaver environment. This agent serves illustrative purposes only.
	- agents/simple_agent.py: A simple PPO agent that gradually learns to guide the generator without violating constraints. This agent serves illustrative purposes only.
	- embedder: Contains various modules that convert key characteristics of all relevant parts of the global generator state (e.g., blocks, functions, stack, tables, etc.) into simple numeric Gymnasium spaces.
	- cache.py: Implements the program cache, which is used for computing novelty during training and for storing programs temporarily before they are saved during the program generation phase.
	- extractor.py: Used to extract features from the observation space (created by modules under drl/embedder/) into a fixed-size representation for the actor-critic model.
	- rewards.py: This module is used for calculating and outputting partial and total rewards.
		- Reward weights can be set in combine_rewards(...) (line 58 - 91)
			- r_align = Alignment reward; r_nov = Novelty reward; r_len = Lenght reward; r_depth = Block reward/Complexity reward; r_flag = Flag reward (flag count + True/False distribution), r_values = Value reward (used to punish all 0 output e.g. due to extensive loading of unset locals/globals etc.)
		- flag_reward = True/False activates or deactives the task specific flag reward.
		- depth_reward = True/False activates or deactives the task specific block/complexity reward.
		- target_trace_length is used to set the wished target trace length of the generated program. Up to this point, the agent will receive an reward (proportional to the actual program trace length) as the program finishes generation.
		- alignment_only: Activates only alignment reward (and some novelty reward). Disables all other rewards.
		
- experiments: Contains code for training and evaluating our different scenarios:
	- training: Contains training code.
		- stack_effect.py: Used for training a model for the first stack estimation task.
			- TOTAL_TIME_STEPS (line 18) sets the total amount of time steps the agent is trained for.
		- generate_stack_effect.py: Used for generating samples with an trained model for the stack estimation task.
			- target_sample_count (line 38): The amount of programs which should be output in the end.
		- reachability.py: Used for training the model for the stack reachability task.
			- TOTAL_TIME_STEPS (line 20) sets the total amount of time steps the agent is trained for.
		- generate_reachability.py: Used for generating samples with an trained model for the flag reachability task.
			- target_sample_count (line 40): The amount of programs which should be output in the end.
			- random_action_probability (line 47): Sets probability of a action beeing randomly selected vs. by the policy.
		- result_estimation.py: Used for training the model for the result estimation task.
			- TOTAL_TIME_STEPS (line 20) sets the total amount of time steps the agent is trained for.
			- For even more complex result estimation tasks, enable two value results by uncommenting lines 29 - 33.
		- generate_result_estimation.py: Used for generating samples with an trained model for the result estimation task.
			- target_sample_count (line 41): The amount of programs which should be output in the end.
			- random_action_probability (line 48): Sets probability of a action beeing randomly selected vs. by the policy.
		- alignment.py: Used for training the model for the optional alignment task, where a model is only aligned demonstratively to the relative module opcode distribution of the WasmBench code corpus.
			- TOTAL_TIME_STEPS (line 20) sets the total amount of time steps the agent is trained for.
		- generate_aligned.py: Used for generating samples with an trained model for the WasmBench code alignment benchmark.
			- target_sample_count (line 41): The amount of programs which should be output in the end.
			- random_action_probability (line 48): Sets probability of a action beeing randomly selected vs. by the policy.
		- callbacks.py: Implements multiple callbacks for sb3
		- policy.py: Implements a custom maskable policy with different weights for the (mostly transformer based) encoder part and the MLP part.
		
	- eval: Contains code for evaluation:
		- eval.py: Runs a selected experiment task set on a selected model. Can be called from the command line and supports the following arguments:
			- --experiment ["stack", "flags", "result"]
			- --model ["Llama3", "Qwen31", "Qwen32", "Qwen33", "Phi4Reasoning1", "Phi4Reasoning2", "Phi4Reasoning3", "O4Mini", "Gpt41"] (self-hosted reasoning models have mulitple instances due to comparably long inference)
			- --on_old_output True\False (re-run judge on recorded model output)
			
		- judge.py: Implements code for judging model outputs and providing task prompts.
		- metrics.py: Used for calculating overall error metrics.
			- experiment (line 7): Set exeriment to calculate metrics for.
			- model (lines 8 - 12): Select (reasoning) model
		
		- models: Contains model definitions and tokens for OpenAI and self-hosted models:
			- model.py: Contains abstract model class.
			- openai_models.py: Defines interfaces for OpenAI models
				- Before running evaluation on one of those models, set the OPENAI_TOKEN in line 5
			- runpod_models.py: Defines interfaces for self-hosted models
				- Before running evaluation on one of those models, adjust RUNPOD_TOKEN (line 5) and the endpoints for each model (e.g. line 11).
	
	- wasm_smith: Contains code for generation and visualization as well as the original wasm-smith samples used in the evaluation. Further, code for extracting opcodes is provided (process.py)
	- wasmbench: Contains code for visualization and extraction of opcodes (process.py). Also the filtered wasmbench samples should be placed here.
	- wasmweaver: Contains metrics of the test set generated by our "opcode-aligned" model for comparison with WasmBench and wasm-smith.
	- convert_dataset.py: Converts a dataset consisting of .meta and .wat files into a .jsonl file.
		- source (line 6): Set the source dataset
		- output (line 7): Set the output directory
	- dataset_metrics.py: Computes basic dataset metrics
		- folder_name (line 9): Set the dataset folder here
	- process_wasmweaver_dataset_stats.py: Extracts metrics from raw datasets (e.g. .wasm or .wat) files.
		- out_dir (lien 117): Set the output directory for statistic files.
		- wasm_directory (line 48): Set the directory of the raw dataset.
			
#### Getting Started

##### Install (Tested on Ubuntu 24.04.1 LTS)
	
	- Project requires Python 3.12 # Install python 3.12
	- pip install -r requirement.txt # Install dependencies
	- export PYTHONPATH="path/to/.../wasmweavercode/:$PYTHONPATH" # Add path to python path.
	- wget https://github.com/WebAssembly/binaryen/releases/download/version_123/binaryen-version_123-x86_64-linux.tar.gz #e.g. for wasm-opt
	- tar -xvzf binaryen-version_123-x86_64-linux.tar.gz
	- export PATH="path/to/.../binaryen-version_123/bin/:$PATH" # Add binaries to path
	- wget https://github.com/bytecodealliance/wasm-tools/releases/download/v1.230.0/wasm-tools-1.230.0-x86_64-linux.tar.gz #e.g. for wasm-smith
	- tar -xvzf wasm-tools-1.230.0-x86_64-linux.tar.gz
	- export PATH="path/to/wasm-tools-1.230.0-x86_64-linux/:$PATH" # Add wasm-tools binary to path
	
#### Run Experiments
	Experiments can be run with the following simple commands:
	
##### 1. Stack Inspect
	- python3 experiments/training/stack_effect.py #(train model) Tensorboard output can be found under "1_stack_effect_tensorboard"
	- python3 experiments/training/generate_stack_effect.py #(generate samples) When finished, the output can be found under "1_stack_effect_samples"
	
##### 2. Reach flags
	- python3 experiments/training/reachability.py #(train model) Tensorboard output can be found under "2_reachability_tensorboard"
	- python3 experiments/training/generate_reachability.py #(generate samples) When finished, the output can be found under "2_reachability_samples"
	
##### 3. Result Prediction
	- python3 experiments/training/result_estimation.py #(train model) Tensorboard output can be found under "3_result_estimation_tensorboard"
	- python3 experiments/training/generate_result_estimation.py #(generate samples) When finished, the output can be found under "3_result_estimation_samples"
	
##### 4. Alignment Test
	- python3 experiments/training/alignment.py #(train model) Tensorboard output can be found under "4_alignment_tensorboard"
	- python3 experiments/training/generate_aligned.py #(generate samples) When finished, the output can be found under "4_alignment_samples"
	
#### Evaluate Experiment 1-3 (For Model resoning performance table)
	- Adjust API tokens and endpoints in experiments/eval/models/openai_models.py and in runpod_models.py
	- Run the eval script with e.g.: python3 experiments/eval/eval.py --model Llama3 --experiment stack
		- Available Arguments:
		- --experiment ["stack", "flags", "result"]
		- --model ["Llama3", "Qwen31", "Qwen32", "Qwen33", "Phi4Reasoning1", "Phi4Reasoning2", "Phi4Reasoning3", "O4Mini", "Gpt41"] (self-hosted reasoning models have mulitple instances due to comparably long inference)
		- --on_old_output True\False (re-run judge on recorded model output)
	- Extract metrics from run result with experiments/eval/metrics.py. Adjust experiment (line 7) and model (lines 9 - 12).

##### Extract dataset metrics:
	- Run dataset_metrics.py to extract simple dataset metrics. Before use, set data set folder name (folder_name, line 9)

##### Visualize Dataset Alignment (Task 4)
	- Train the model (see "4. Alignment Test") and generate outputs.
	- Use "process_wasmweaver_dataset_stats.py" and set outdir (line 117) to the "wasmweaver" directory. Also set the wasm_directory (line 48) to "4_alignment_samples".
	- Run wasmbench/visualization.py

#### Export raw Dataset as jsonl File
	- Use convert_dataset.py to convert the dataset.
		- Set source (line 6) to the dataset source
		- Set output (line 7) to the output json file

#### Gymnasium Environment
	- A simple random agent, using the environment can be found in drl/agents/random_agent.py. Another sb3 agent can be found in drl/agents/simple_agent.py
	- The environment is located in core/environment.py
	- The environment exposes action_masks() to fetch all available actions.
	- At each step the generator puts out its current GlobalState (core/state/state.py) as well as the current function and blocks (both in core/state/functions.py)
	- These are then converted to numeric gymnasium spaces with embedding modules, located under drl/embedder/... The ids found in drl/embedder/tiles.py->get_id() (ids of code tiles) can also be used to decode the available actions in the available action mask.
	- An simple extractor, combining all those numeric embeddings into a fixed-size representation for the actor-critic model can be found in drl/extractor.py