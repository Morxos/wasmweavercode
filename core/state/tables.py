# SPDX-License-Identifier: MIT
# SPDX-FileCopyrightText: 2025 Siemens AG

from typing import Dict, List, Type
from core.value import Ref, RefFunc


class Table:
    """
    A simple table that stores a name, type and elements.
    """
    def __init__(self, name: str, index:int, table_type: Type[RefFunc], size: int):
        self.name = name
        self.table_type = table_type
        self.elements: List[Ref] = [table_type(None)] * size
        self.size = size
        self.index = index

    def wipe(self):
        self.elements = [self.table_type(None)] * self.size

    def generate_code(self) -> str:
        return f"(table ${self.name} {self.size} funcref)"

    def __str__(self):
        return f"{self.name} {self.table_type} {self.elements}"


class Tables:
    """
    A simple table state that stores all tables.
    """

    def __init__(self):
        self.tables: Dict[str, Table] = {}

    def set(self, value: Table):
        self.tables[value.name] = value

    def get_sorted_by_index(self)-> List[Table]:
        return sorted(self.tables.values(), key=lambda x: x.index)

    def get(self, name):
        return self.tables[name]

    def __len__(self):
        return len(self.tables)

    def reinit_tables(self):
        for table in self.tables.values():
            table.wipe()

    def get_relative_index(self, name: str) -> int:
        """Get the relative index of a table by its name"""
        sorted_tables = self.get_sorted_by_index()
        for i, table in enumerate(sorted_tables):
            if table.name == name:
                return i
        raise Exception(f"Table {name} not found")
