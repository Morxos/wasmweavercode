import numpy as np
from gymnasium.spaces import Box

from core.config.config import MAX_GLOBALS_PER_MODULE, MAX_TABLES_PER_MODULE, MAX_TABLE_SIZE
from core.state.functions import Function
from core.state.globals import Globals, Global
from core.state.state import GlobalState
from core.state.tables import Tables, Table
from core.value import I32, I64, RefFunc, RefExtern
from drl.embedder.values import embedd_value_type, symlog_to_unit


class TablesEmbedder:

    def __init__(self):
        ...

    def get_space(self):
        return Box(low=-np.inf, high=np.inf, shape=(3, MAX_TABLES_PER_MODULE*MAX_TABLE_SIZE,), dtype=np.float32)

    def __call__(self, tables: Tables, global_state: GlobalState):

        value_types = np.zeros(MAX_TABLES_PER_MODULE*MAX_TABLE_SIZE, dtype=np.int32)
        table_values = np.zeros(MAX_TABLES_PER_MODULE*MAX_TABLE_SIZE, dtype=np.float32)
        table_mask = np.zeros(MAX_TABLES_PER_MODULE*MAX_TABLE_SIZE, dtype=np.float32)

        sorted_tables = tables.get_sorted_by_index()

        for t_i, table in enumerate(sorted_tables):
            for i in range(table.size):
                value_types[t_i*MAX_TABLE_SIZE + i] = embedd_value_type(table.elements[i])

                if table.elements[i].value==None:
                    table_values[t_i*MAX_TABLE_SIZE + i] = -1
                else:
                    print()
                    table_values[t_i*MAX_TABLE_SIZE + i] = global_state.functions.get(table.elements[i].value).index
                table_mask[t_i*MAX_TABLE_SIZE + i] = 1


        return np.array([value_types, table_values, table_mask], dtype=np.float32)


if __name__ == "__main__":
    _tables = Tables()
    _tables.set(Table("test", 0, RefFunc, 5))
    _tables.set(Table("test2", 1, RefFunc, 5))
    _tables.get("test").elements[0] = RefFunc(Function("test_func", 0, [], [], False))
    embedder = TablesEmbedder()
    embedding = embedder(_tables)
    print(embedding)
    print(embedder.get_space().contains(embedding))
    print(embedder.get_space())
