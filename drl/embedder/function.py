import numpy as np
from gymnasium.spaces import Dict, Discrete, Box, MultiDiscrete

from core.config.config import MAX_FUNCTION_INPUTS, MAX_FUNCTION_OUTPUTS, MAX_FUNCTIONS_PER_MODULE
from core.state.functions import Function
from core.value import I32, I64, F32, F64
from drl.embedder.values import embedd_value_type, MAX_VALUE_TYPE_INDEX


class FunctionEmbedder:

    def __init__(self):
        ...

    def get_space(self):
        return Box(low=-np.inf, high=np.inf, shape=(MAX_FUNCTION_INPUTS*(MAX_VALUE_TYPE_INDEX+1) + MAX_FUNCTION_OUTPUTS*(MAX_VALUE_TYPE_INDEX+1) + 2,), dtype=np.float32)

    def __call__(self, function: Function):
        inputs_tensor = np.zeros(MAX_FUNCTION_INPUTS*(MAX_VALUE_TYPE_INDEX+1), dtype=np.float32)
        outputs_tensor = np.zeros(MAX_FUNCTION_OUTPUTS*(MAX_VALUE_TYPE_INDEX+1), dtype=np.float32)
        function_input_count = np.float32(len(function.inputs))
        function_output_count = np.float32(len(function.outputs))
        for i, input_type in enumerate(function.inputs):
            one_hot = np.zeros(MAX_VALUE_TYPE_INDEX+1, dtype=np.float32)
            one_hot[embedd_value_type(input_type.get_default_value())] = 1
            inputs_tensor[i*(MAX_VALUE_TYPE_INDEX+1):(i+1)*(MAX_VALUE_TYPE_INDEX+1)] = one_hot

        for i, output_type in enumerate(function.outputs):
            one_hot = np.zeros(MAX_VALUE_TYPE_INDEX+1, dtype=np.float32)
            one_hot[embedd_value_type(output_type.get_default_value())] = 1
            outputs_tensor[i*(MAX_VALUE_TYPE_INDEX+1):(i+1)*(MAX_VALUE_TYPE_INDEX+1)] = one_hot

        # Embedd into one tensor
        all_inputs = np.concatenate((inputs_tensor, outputs_tensor, np.array([function_input_count]), np.array([function_output_count])))

        return all_inputs

if __name__ == "__main__":
    function = Function(index=1, inputs=[I32, I64], outputs=[F32, F64],name="test_function")
    embedder = FunctionEmbedder()
    embedding = embedder(function)
    print(embedding)
    print(embedder.get_space().contains(embedding))
    print(embedder.get_space())
