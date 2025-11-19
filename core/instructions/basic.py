# SPDX-License-Identifier: MIT
# SPDX-FileCopyrightText: 2025 Siemens AG

from typing import List
from core.state.functions import Function, Block
from core.state.state import GlobalState
from core.tile import AbstractTile
from core.value import I32, Num


class NoOp(AbstractTile):
    name = "NoOp"

    @staticmethod
    def can_be_placed(current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        return True

    def apply(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        pass

    def generate_code(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]) -> str:
        return "nop"

    def get_byte_code_size(self):
        return 1


class Drop(AbstractTile):
    name = "Drop"

    @staticmethod
    def can_be_placed(current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        return len(current_state.stack.get_current_frame().stack) > 0

    def apply(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        current_state.stack.get_current_frame().stack_pop()

    def generate_code(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]) -> str:
        return "drop"

    def get_byte_code_size(self):
        return 1


class Select(AbstractTile):
    name = "Select"

    @staticmethod
    def can_be_placed(current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        if len(current_state.stack.get_current_frame().stack) < 3:
            return False
        condition = current_state.stack.get_current_frame().stack_peek(1)
        if not isinstance(condition, I32):
            return False

        if not isinstance(current_state.stack.get_current_frame().stack_peek(3), Num) or not isinstance(
                current_state.stack.get_current_frame().stack_peek(2), Num):
            return False
        if type(current_state.stack.get_current_frame().stack_peek(3)) != type(
                current_state.stack.get_current_frame().stack_peek(2)):
            return False
        return True

    def apply(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        condition = current_state.stack.get_current_frame().stack_pop()
        false_value = current_state.stack.get_current_frame().stack_pop()
        true_value = current_state.stack.get_current_frame().stack_pop()

        if condition.value != 0:
            result = true_value
        else:
            result = false_value

        current_state.stack.get_current_frame().stack_push(result)

    def generate_code(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]) -> str:
        return "select"

    def get_byte_code_size(self):
        return 1
