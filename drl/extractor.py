import gymnasium.spaces
import torch
from stable_baselines3.common.torch_layers import BaseFeaturesExtractor

from core.config.config import MAX_STACK_SIZE, MAX_LOCALS_PER_FUNCTION, MAX_GLOBALS_PER_MODULE, MAX_TABLES_PER_MODULE, \
    MAX_TABLE_SIZE, MAX_TILE_LOOKBACK
from drl.embedder.stack import SequenceEncoder
from drl.embedder.tiles import MAX_TILE_IDS
from drl.embedder.values import MAX_VALUE_TYPE_INDEX


class SimpleFeatureExtractor(BaseFeaturesExtractor):

    def __init__(self, observation_space: gymnasium.spaces.Dict):
        super().__init__(observation_space, features_dim=1)
        self.stack_encoder = SequenceEncoder(MAX_VALUE_TYPE_INDEX+1, d_model=32,n_heads=2, n_layers=2, max_len=MAX_STACK_SIZE)
        self.locals_encoder = SequenceEncoder(MAX_VALUE_TYPE_INDEX+1, d_model=32,n_heads=2, n_layers=2, max_len=MAX_LOCALS_PER_FUNCTION)
        self.globals_encoder = SequenceEncoder(MAX_VALUE_TYPE_INDEX+1, d_model=32,n_heads=2, n_layers=2, max_len=MAX_GLOBALS_PER_MODULE)
        self.tables_encoder = SequenceEncoder(MAX_VALUE_TYPE_INDEX+1, d_model=32,n_heads=2, n_layers=2, max_len=MAX_TABLES_PER_MODULE*MAX_TABLE_SIZE)
        self.tiles_encoder = SequenceEncoder(MAX_TILE_IDS+1, d_model=256, n_heads=8, n_layers=4, max_len=MAX_TILE_LOOKBACK)

        encoded_constraints = observation_space["constraints"]
        encoded_constraints_shape = encoded_constraints.shape

        encoded_current_function = observation_space["current_function"]
        encoded_current_function_shape = encoded_current_function.shape

        encoded_current_stack_shape = self.stack_encoder.d_model

        encoded_current_block = observation_space["current_block"]
        encoded_current_block_shape = encoded_current_block.shape




        output_shape = (encoded_constraints_shape[0] +
                        encoded_current_function_shape[0] +
                        encoded_current_stack_shape +
                        encoded_current_block_shape[0] +
                        self.locals_encoder.d_model +
                        self.globals_encoder.d_model+
                        self.tables_encoder.d_model+
                        self.tiles_encoder.d_model)
        #Set features dim
        print("Output shape: ", output_shape)
        self._features_dim = output_shape


    def forward(self, observations: torch.Tensor) -> torch.Tensor:
        encoded_tensor_list = []

        encoded_constraints = observations["constraints"]

        encoded_current_function = observations["current_function"]

        encoded_current_stack = observations["current_stack"]

        encoded_current_block = observations["current_block"]

        locals_current_function = observations["locals"]

        _globals = observations["globals"]

        tables = observations["tables"]

        tiles = observations["tiles"]


        stack_ids = encoded_current_stack[:, 0, :]
        stack_values = encoded_current_stack[:, 1, :]
        stack_mask = encoded_current_stack[:, 2, :]

        #Convert to int tensors
        stack_ids = stack_ids.long()
        stack_values = stack_values.float()
        stack_mask = stack_mask.float()

        _globals_ids = _globals[:, 0, :]
        _globals_values = _globals[:, 1, :]
        _globals_mask = _globals[:, 3, :]

        locals_ids = locals_current_function[:, 0, :]
        locals_values = locals_current_function[:, 1, :]
        locals_mask = locals_current_function[:, 2, :]

        tables_ids = tables[:, 0, :]
        tables_values = tables[:, 1, :]
        tables_mask = tables[:, 2, :]

        tile_ids = tiles[:, 0, :]
        tile_values = tiles[:, 1, :]
        tile_mask = tiles[:, 2, :]

        # Convert to int tensors
        locals_ids = locals_ids.long()
        locals_values = locals_values.float()
        locals_mask = locals_mask.float()

        _globals_ids = _globals_ids.long()
        _globals_values = _globals_values.float()
        _globals_mask = _globals_mask.float()

        tables_ids = tables_ids.long()
        tables_values = tables_values.float()
        tables_mask = tables_mask.float()

        tile_ids = tile_ids.long()
        tile_values = tile_values.float()
        tile_mask = tile_mask.float()

        # Encode tiles
        encoded_tiles = self.tiles_encoder(tile_ids, tile_values, tile_mask)
        encoded_tensor_list.append(encoded_tiles)

        # Encode locals and globals
        encoded_locals = self.locals_encoder(locals_ids, locals_values, locals_mask)
        encoded_globals = self.globals_encoder(_globals_ids, _globals_values, _globals_mask)
        encoded_tables = self.tables_encoder(tables_ids, tables_values, tables_mask)


        encoded_tensor_list.append(encoded_constraints)
        encoded_tensor_list.append(encoded_current_function)
        stack_embedding = self.stack_encoder(stack_ids, stack_values, stack_mask)
        encoded_tensor_list.append(stack_embedding)
        encoded_tensor_list.append(encoded_current_block)
        encoded_tensor_list.append(encoded_locals)
        encoded_tensor_list.append(encoded_globals)
        encoded_tensor_list.append(encoded_tables)

        # Concatenate all tensors along the last dimension
        concatenated_tensor = torch.cat(encoded_tensor_list, dim=1)
        return concatenated_tensor
