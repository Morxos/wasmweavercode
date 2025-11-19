# SPDX-License-Identifier: MIT
# SPDX-FileCopyrightText: 2025 Siemens AG

from typing import List
from core.config.config import MEMORY_MAX_WRITE_INDEX
from core.state.functions import Function, Block
from core.state.state import GlobalState
from core.tile import AbstractTile
from core.value import I32, I64, F32, F64
import random
import math
import numpy as np


class Int64Const(AbstractTile):
    name = "I64Const"

    def __init__(self, seed: int):
        super().__init__(seed)
        # Choose an order of magnitude such that 10**magnitude is within a 32-bit integer range
        magnitude = 10 ** random.randint(0, 9)  # Choose magnitudes from 10^0 to 10^9
        # Randomly choose a number within this magnitude, adjusting for both positive and negative ranges
        if random.randint(0, 50) == 0:
            #Special case for 0
            self.value = np.int64(0)
        elif magnitude == 1:
            self.value = np.int64(random.randint(-2 ** 63, 2 ** 63 - 1))  # Full range for smallest magnitude
        else:
            self.value = np.int64(random.randint(-magnitude, magnitude - 1))

    @staticmethod
    def can_be_placed(current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        return current_state.stack.get_current_frame().can_push_to_stack()

    def apply(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        current_state.stack.get_current_frame().stack_push(I64(self.value))

    def generate_code(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]) -> str:
        return f"(i64.const {self.value})"

    def get_byte_code_size(self):
        if -64 <= self.value < 64:
            return 2  # One byte for the opcode, one for the value
        elif -8192 <= self.value < 8192:
            return 3  # Up to 14 bits, hence 3 bytes (including opcode)
        elif -1048576 <= self.value < 1048576:
            return 4  # Up to 21 bits, hence 4 bytes
        elif -134217728 <= self.value < 134217728:
            return 5  # Up to 28 bits, hence 5 bytes
        elif -17179869184 <= self.value < 17179869184:
            return 6  # Up to 35 bits, hence 6 bytes
        elif -2199023255552 <= self.value < 2199023255552:
            return 7  # Up to 42 bits, hence 7 bytes
        elif -281474976710656 <= self.value < 281474976710656:
            return 8  # Up to 49 bits, hence 8 bytes
        elif -36028797018963968 <= self.value < 36028797018963968:
            return 9  # Up to 56 bits, hence 9 bytes
        else:
            return 10  # Full 64 bits (or more, sign-extended), hence 10 bytes (including opcode)

class Int64Add(AbstractTile):
    name = "I64Add"

    @staticmethod
    def can_be_placed(current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        if len(current_state.stack.get_current_frame().stack) < 2:
            return False
        a = current_state.stack.get_current_frame().stack_peek(2)
        b = current_state.stack.get_current_frame().stack_peek(1)
        return isinstance(a, I64) and isinstance(b, I64)

    def apply(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        a = current_state.stack.get_current_frame().stack_pop()
        b = current_state.stack.get_current_frame().stack_pop()
        current_state.stack.get_current_frame().stack_push(I64(np.int64(a.value) + np.int64(b.value)))

    def generate_code(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]) -> str:
        return "i64.add"

    def get_byte_code_size(self):
        return 1

class Int64Sub(AbstractTile):
    name = "I64Sub"

    @staticmethod
    def can_be_placed(current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        if len(current_state.stack.get_current_frame().stack) < 2:
            return False
        a = current_state.stack.get_current_frame().stack_peek(2)
        b = current_state.stack.get_current_frame().stack_peek(1)
        return isinstance(a, I64) and isinstance(b, I64)

    def apply(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        b = current_state.stack.get_current_frame().stack_pop()
        a = current_state.stack.get_current_frame().stack_pop()
        current_state.stack.get_current_frame().stack_push(I64(np.int64(np.int64(a.value) - np.int64(b.value))))

    def generate_code(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]) -> str:
        return "i64.sub"

    def get_byte_code_size(self):
        return 1

class Int64Mul(AbstractTile):
    name = "I64Mul"

    @staticmethod
    def can_be_placed(current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        if len(current_state.stack.get_current_frame().stack) < 2:
            return False
        a = current_state.stack.get_current_frame().stack_peek(2)
        b = current_state.stack.get_current_frame().stack_peek(1)
        return isinstance(a, I64) and isinstance(b, I64)

    def apply(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        a = current_state.stack.get_current_frame().stack_pop()
        b = current_state.stack.get_current_frame().stack_pop()
        current_state.stack.get_current_frame().stack_push(I64((np.int64(a.value) * np.int64(b.value))))

    def generate_code(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]) -> str:
        return "i64.mul"

    def get_byte_code_size(self):
        return 1

class Int64DivS(AbstractTile):
    name = "I64DivS"

    @staticmethod
    def can_be_placed(current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        if len(current_state.stack.get_current_frame().stack) < 2:
            return False
        a = current_state.stack.get_current_frame().stack_peek(2)
        b = current_state.stack.get_current_frame().stack_peek(1)
        return isinstance(a, I64) and isinstance(b, I64) and b.value != 0  # ensure b is not zero

    def apply(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        b = current_state.stack.get_current_frame().stack_pop()
        a = current_state.stack.get_current_frame().stack_pop()
        if b.value == 0:
            raise ValueError("Division by zero")
        result = a.value.astype(np.int64) / b.value.astype(np.int64)
        result = np.int64(result)
        current_state.stack.get_current_frame().stack_push(I64(result))

    def generate_code(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]) -> str:
        return "i64.div_s"

    def get_byte_code_size(self):
        return 1

class Int64DivU(AbstractTile):
    name = "I64DivU"

    @staticmethod
    def can_be_placed(current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        if len(current_state.stack.get_current_frame().stack) < 2:
            return False
        a = current_state.stack.get_current_frame().stack_peek(2)
        b = current_state.stack.get_current_frame().stack_peek(1)
        return isinstance(a, I64) and isinstance(b, I64) and b.value != 0  # ensure b is not zero for division

    def apply(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        b = current_state.stack.get_current_frame().stack_pop()
        a = current_state.stack.get_current_frame().stack_pop()
        if b.value == 0:
            raise ValueError("Division by zero")
        result = (a.value.astype(np.uint64) // b.value.astype(np.uint64))
        current_state.stack.get_current_frame().stack_push(I64(result))

    def generate_code(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]) -> str:
        return "i64.div_u"

    def get_byte_code_size(self):
        return 1

class Int64RemS(AbstractTile):
    name = "I64RemS"

    @staticmethod
    def can_be_placed(current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        if len(current_state.stack.get_current_frame().stack) < 2:
            return False
        a = current_state.stack.get_current_frame().stack_peek(2)
        b = current_state.stack.get_current_frame().stack_peek(1)
        return isinstance(a, I64) and isinstance(b, I64) and b.value != 0  # ensure b is not zero for rem

    def apply(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        b = current_state.stack.get_current_frame().stack_pop()
        a = current_state.stack.get_current_frame().stack_pop()
        if b.value == 0:
            raise ValueError("Division by zero")
        result = a.value.astype(np.int64) % b.value.astype(np.int64)
        if (a.value.astype(np.int64) < 0) != (b.value.astype(np.int64) < 0) and result != 0:
            result = result - b.value.astype(np.int64)
        current_state.stack.get_current_frame().stack_push(I64(result))

    def generate_code(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]) -> str:
        return "i64.rem_s"

    def get_byte_code_size(self):
        return 1

class Int64RemU(AbstractTile):
    name = "I64RemU"

    @staticmethod
    def can_be_placed(current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        if len(current_state.stack.get_current_frame().stack) < 2:
            return False
        a = current_state.stack.get_current_frame().stack_peek(2)
        b = current_state.stack.get_current_frame().stack_peek(1)
        return isinstance(a, I64) and isinstance(b, I64) and b.value != 0  # ensure b is not zero

    def apply(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        b = current_state.stack.get_current_frame().stack_pop()
        a = current_state.stack.get_current_frame().stack_pop()

        if b.value == 0:
            raise ValueError("Division by zero")
        result = np.remainder(a.value.astype(np.uint64), b.value.astype(np.uint64))
        current_state.stack.get_current_frame().stack_push(I64(result))

    def generate_code(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]) -> str:
        return "i64.rem_u"

    def get_byte_code_size(self):
        return 1

class Int64And(AbstractTile):
    name = "I64And"

    @staticmethod
    def can_be_placed(current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        if len(current_state.stack.get_current_frame().stack) < 2:
            return False
        a = current_state.stack.get_current_frame().stack_peek(2)
        b = current_state.stack.get_current_frame().stack_peek(1)
        return isinstance(a, I64) and isinstance(b, I64)

    def apply(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        b = current_state.stack.get_current_frame().stack_pop()
        a = current_state.stack.get_current_frame().stack_pop()
        result = a.value.astype(np.uint64) & b.value.astype(np.uint64)
        current_state.stack.get_current_frame().stack_push(I64(result))

    def generate_code(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]) -> str:
        return "i64.and"

    def get_byte_code_size(self):
        return 1

class Int64Or(AbstractTile):
    name = "I64Or"

    @staticmethod
    def can_be_placed(current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        if len(current_state.stack.get_current_frame().stack) < 2:
            return False
        a = current_state.stack.get_current_frame().stack_peek(2)
        b = current_state.stack.get_current_frame().stack_peek(1)
        return isinstance(a, I64) and isinstance(b, I64)

    def apply(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        b = current_state.stack.get_current_frame().stack_pop()
        a = current_state.stack.get_current_frame().stack_pop()
        result = a.value.astype(np.uint64) | b.value.astype(np.uint64)  # Bitwise OR operation
        current_state.stack.get_current_frame().stack_push(I64(result))

    def generate_code(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]) -> str:
        return "i64.or"

    def get_byte_code_size(self):
        return 1

class Int64Xor(AbstractTile):
    name = "I64Xor"

    @staticmethod
    def can_be_placed(current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        if len(current_state.stack.get_current_frame().stack) < 2:
            return False
        a = current_state.stack.get_current_frame().stack_peek(2)
        b = current_state.stack.get_current_frame().stack_peek(1)
        return isinstance(a, I64) and isinstance(b, I64)

    def apply(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        b = current_state.stack.get_current_frame().stack_pop()
        a = current_state.stack.get_current_frame().stack_pop()
        result = a.value.astype(np.uint64) ^ b.value.astype(np.uint64)  # Bitwise XOR operation
        current_state.stack.get_current_frame().stack_push(I64(result))

    def generate_code(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]) -> str:
        return "i64.xor"

    def get_byte_code_size(self):
        return 1

class Int64Shl(AbstractTile):
    name = "I64Shl"

    @staticmethod
    def can_be_placed(current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        if len(current_state.stack.get_current_frame().stack) < 2:
            return False
        a = current_state.stack.get_current_frame().stack_peek(2)
        b = current_state.stack.get_current_frame().stack_peek(1)
        return isinstance(a, I64) and isinstance(b, I64)

    def apply(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        shift_amount = int(current_state.stack.get_current_frame().stack_pop().value.astype(np.uint64) % 64)
        value = current_state.stack.get_current_frame().stack_pop().value.astype(np.int64)
        result = (value << shift_amount)  # Ensure 64-bit wrapping
        current_state.stack.get_current_frame().stack_push(I64(result))

    def generate_code(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]) -> str:
        return "i64.shl"

    def get_byte_code_size(self):
        return 1

class Int64ShrS(AbstractTile):
    name = "I64ShrS"

    @staticmethod
    def can_be_placed(current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        if len(current_state.stack.get_current_frame().stack) < 2:
            return False
        a = current_state.stack.get_current_frame().stack_peek(2)
        b = current_state.stack.get_current_frame().stack_peek(1)
        return isinstance(a, I64) and isinstance(b, I64)

    def apply(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        shift_amount = current_state.stack.get_current_frame().stack_pop().value.astype(np.uint64) % 64
        value = current_state.stack.get_current_frame().stack_pop().value.astype(np.int64)
        result = value >> np.int32(shift_amount)
        current_state.stack.get_current_frame().stack_push(I64(result.astype(np.int64)))

    def generate_code(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]) -> str:
        return "i64.shr_s"

    def get_byte_code_size(self):
        return 1

class Int64ShrU(AbstractTile):
    name = "I64ShrU"

    @staticmethod
    def can_be_placed(current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        if len(current_state.stack.get_current_frame().stack) < 2:
            return False
        a = current_state.stack.get_current_frame().stack_peek(2)
        b = current_state.stack.get_current_frame().stack_peek(1)
        return isinstance(a, I64) and isinstance(b, I64)

    def apply(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        shift_amount = current_state.stack.get_current_frame().stack_pop().value.astype(np.uint64) % np.uint64(64)
        value = current_state.stack.get_current_frame().stack_pop().value.astype(np.uint64)
        result = value >> shift_amount  # Unsigned shift
        current_state.stack.get_current_frame().stack_push(I64(result))

    def generate_code(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]) -> str:
        return "i64.shr_u"

    def get_byte_code_size(self):
        return 1

class Int64Rotl(AbstractTile):
    name = "I64Rotl"

    @staticmethod
    def can_be_placed(current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        if len(current_state.stack.get_current_frame().stack) < 2:
            return False
        a = current_state.stack.get_current_frame().stack_peek(2)
        b = current_state.stack.get_current_frame().stack_peek(1)
        return isinstance(a, I64) and isinstance(b, I64)

    def apply(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        rotate_amount = current_state.stack.get_current_frame().stack_pop().value.astype(np.uint64) % 64
        value = current_state.stack.get_current_frame().stack_pop().value.astype(np.uint64)
        result = value & 0xFFFFFFFFFFFFFFFF  # Ensure 64-bit wrapping
        for i in range(int(rotate_amount)):
            result = (result << np.uint64(1)) | ((result & 0x8000000000000000) >> np.uint64(63))
            result = result & 0xFFFFFFFFFFFFFFFF  # Ensure 64-bit wrapping
        current_state.stack.get_current_frame().stack_push(I64(result))

    def generate_code(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]) -> str:
        return "i64.rotl"

    def get_byte_code_size(self):
        return 1

class Int64Rotr(AbstractTile):
    name = "I64Rotr"

    @staticmethod
    def can_be_placed(current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        if len(current_state.stack.get_current_frame().stack) < 2:
            return False
        a = current_state.stack.get_current_frame().stack_peek(2)
        b = current_state.stack.get_current_frame().stack_peek(1)
        return isinstance(a, I64) and isinstance(b, I64)

    def apply(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        rotate_amount = current_state.stack.get_current_frame().stack_pop().value.astype(np.uint64) % np.uint64(64)
        value = current_state.stack.get_current_frame().stack_pop().value.astype(np.uint64)
        result = value & np.uint64(0xFFFFFFFFFFFFFFFF)  # Ensure 64-bit wrapping
        for i in range(rotate_amount):
            result = (result >> np.uint64(1)) | ((result & np.uint64(1)) << np.uint64(63))
            result = result & np.uint64(0xFFFFFFFFFFFFFFFF)  # Ensure 64-bit wrapping
        current_state.stack.get_current_frame().stack_push(I64(result))

    def generate_code(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]) -> str:
        return "i64.rotr"

    def get_byte_code_size(self):
        return 1

class Int64Clz(AbstractTile):
    name = "I64Clz"

    @staticmethod
    def can_be_placed(current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        if len(current_state.stack.get_current_frame().stack) < 1:
            return False
        a = current_state.stack.get_current_frame().stack_peek(1)
        return isinstance(a, I64)

    def apply(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        value = int(current_state.stack.get_current_frame().stack_pop().value.astype(np.uint64))

        leading_zeros = 0
        for i in range(64):
            if (value & (1 << (63 - i))) != 0:
                break
            leading_zeros += 1
        current_state.stack.get_current_frame().stack_push(I64(np.uint64(leading_zeros)))

    def generate_code(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]) -> str:
        return "i64.clz"

    def get_byte_code_size(self):
        return 1

class Int64Ctz(AbstractTile):
    name = "I64Ctz"

    @staticmethod
    def can_be_placed(current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        if len(current_state.stack.get_current_frame().stack) < 1:
            return False
        a = current_state.stack.get_current_frame().stack_peek(1)
        return isinstance(a, I64)

    def apply(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        value = int(current_state.stack.get_current_frame().stack_pop().value.astype(np.uint64))
        if value == 0:
            result = 64
        else:
            result = 0
            while (value & 1) == 0:
                result += 1
                value >>= 1

        current_state.stack.get_current_frame().stack_push(I64(np.uint64(result)))

    def generate_code(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]) -> str:
        return "i64.ctz"

    def get_byte_code_size(self):
        return 1

class Int64Popcnt(AbstractTile):
    name = "I64Popcnt"

    @staticmethod
    def can_be_placed(current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        if len(current_state.stack.get_current_frame().stack) < 1:
            return False
        a = current_state.stack.get_current_frame().stack_peek(1)
        return isinstance(a, I64)

    def apply(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        value = current_state.stack.get_current_frame().stack_pop().value.astype(np.uint64)
        result = bin(value & 0xFFFFFFFFFFFFFFFF).count("1")
        current_state.stack.get_current_frame().stack_push(I64(np.uint64(result)))

    def generate_code(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]) -> str:
        return "i64.popcnt"

    def get_byte_code_size(self):
        return 1

class Int64Eqz(AbstractTile):
    name = "I64Eqz"

    @staticmethod
    def can_be_placed(current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        if len(current_state.stack.get_current_frame().stack) < 1:
            return False
        a = current_state.stack.get_current_frame().stack_peek(1)
        return isinstance(a, I64)

    def apply(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        value = current_state.stack.get_current_frame().stack_pop().value.astype(np.uint64)
        result = 1 if value == 0 else 0
        current_state.stack.get_current_frame().stack_push(I32(np.uint32(result)))

    def generate_code(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]) -> str:
        return "i64.eqz"

    def get_byte_code_size(self):
        return 1

class Int64Eq(AbstractTile):
    name = "I64Eq"

    @staticmethod
    def can_be_placed(current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        if len(current_state.stack.get_current_frame().stack) < 2:
            return False
        a = current_state.stack.get_current_frame().stack_peek(2)
        b = current_state.stack.get_current_frame().stack_peek(1)
        return isinstance(a, I64) and isinstance(b, I64)

    def apply(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        b = current_state.stack.get_current_frame().stack_pop().value.astype(np.uint64)
        a = current_state.stack.get_current_frame().stack_pop().value.astype(np.uint64)
        result = 1 if a == b else 0
        current_state.stack.get_current_frame().stack_push(I32(np.uint32(result)))

    def generate_code(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]) -> str:
        return "i64.eq"

    def get_byte_code_size(self):
        return 1

class Int64Ne(AbstractTile):
    name = "I64Ne"

    @staticmethod
    def can_be_placed(current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        if len(current_state.stack.get_current_frame().stack) < 2:
            return False
        a = current_state.stack.get_current_frame().stack_peek(2)
        b = current_state.stack.get_current_frame().stack_peek(1)
        return isinstance(a, I64) and isinstance(b, I64)

    def apply(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        b = current_state.stack.get_current_frame().stack_pop().value.astype(np.uint64)
        a = current_state.stack.get_current_frame().stack_pop().value.astype(np.uint64)
        result = 1 if a != b else 0
        current_state.stack.get_current_frame().stack_push(I32(np.uint32(result)))

    def generate_code(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]) -> str:
        return "i64.ne"

    def get_byte_code_size(self):
        return 1

class Int64LtS(AbstractTile):
    name = "I64LtS"

    @staticmethod
    def can_be_placed(current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        if len(current_state.stack.get_current_frame().stack) < 2:
            return False
        b = current_state.stack.get_current_frame().stack_peek(1)
        a = current_state.stack.get_current_frame().stack_peek(2)
        return isinstance(a, I64) and isinstance(b, I64)

    def apply(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        b = current_state.stack.get_current_frame().stack_pop().value.astype(np.int64)
        a = current_state.stack.get_current_frame().stack_pop().value.astype(np.int64)
        result = 1 if a < b else 0
        current_state.stack.get_current_frame().stack_push(I32(np.uint32(result)))

    def generate_code(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]) -> str:
        return "i64.lt_s"

    def get_byte_code_size(self):
        return 1

class Int64LtU(AbstractTile):
    name = "I64LtU"

    @staticmethod
    def can_be_placed(current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        if len(current_state.stack.get_current_frame().stack) < 2:
            return False
        b = current_state.stack.get_current_frame().stack_peek(1)
        a = current_state.stack.get_current_frame().stack_peek(2)
        return isinstance(a, I64) and isinstance(b, I64)

    def apply(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        b = current_state.stack.get_current_frame().stack_pop().value.astype(np.uint64)
        a = current_state.stack.get_current_frame().stack_pop().value.astype(np.uint64)
        result = 1 if a < b else 0
        current_state.stack.get_current_frame().stack_push(I32(np.uint32(result)))

    def generate_code(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]) -> str:
        return "i64.lt_u"

    def get_byte_code_size(self):
        return 1

class Int64LeS(AbstractTile):
    name = "I64LeS"

    @staticmethod
    def can_be_placed(current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        if len(current_state.stack.get_current_frame().stack) < 2:
            return False
        b = current_state.stack.get_current_frame().stack_peek(1)
        a = current_state.stack.get_current_frame().stack_peek(2)
        return isinstance(a, I64) and isinstance(b, I64)

    def apply(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        b = current_state.stack.get_current_frame().stack_pop().value.astype(np.int64)
        a = current_state.stack.get_current_frame().stack_pop().value.astype(np.int64)
        result = 1 if a <= b else 0
        current_state.stack.get_current_frame().stack_push(I32(np.uint32(result)))

    def generate_code(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]) -> str:
        return "i64.le_s"

    def get_byte_code_size(self):
        return 1

class Int64LeU(AbstractTile):
    name = "I64LeU"

    @staticmethod
    def can_be_placed(current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        if len(current_state.stack.get_current_frame().stack) < 2:
            return False
        b = current_state.stack.get_current_frame().stack_peek(1)
        a = current_state.stack.get_current_frame().stack_peek(2)
        return isinstance(a, I64) and isinstance(b, I64)

    def apply(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        b = current_state.stack.get_current_frame().stack_pop().value.astype(np.uint64)
        a = current_state.stack.get_current_frame().stack_pop().value.astype(np.uint64)
        result = 1 if a <= b else 0
        current_state.stack.get_current_frame().stack_push(I32(np.uint32(result)))

    def generate_code(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]) -> str:
        return "i64.le_u"

    def get_byte_code_size(self):
        return 1

class Int64GtS(AbstractTile):
    name = "I64GtS"

    @staticmethod
    def can_be_placed(current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        if len(current_state.stack.get_current_frame().stack) < 2:
            return False
        b = current_state.stack.get_current_frame().stack_peek(1)
        a = current_state.stack.get_current_frame().stack_peek(2)
        return isinstance(a, I64) and isinstance(b, I64)

    def apply(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        b = current_state.stack.get_current_frame().stack_pop().value.astype(np.int64)
        a = current_state.stack.get_current_frame().stack_pop().value.astype(np.int64)
        result = 1 if a > b else 0
        current_state.stack.get_current_frame().stack_push(I32(np.uint32(result)))

    def generate_code(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]) -> str:
        return "i64.gt_s"

    def get_byte_code_size(self):
        return 1

class Int64GtU(AbstractTile):
    name = "I64GtU"

    @staticmethod
    def can_be_placed(current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        if len(current_state.stack.get_current_frame().stack) < 2:
            return False
        b = current_state.stack.get_current_frame().stack_peek(1)
        a = current_state.stack.get_current_frame().stack_peek(2)
        return isinstance(a, I64) and isinstance(b, I64)

    def apply(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        b = current_state.stack.get_current_frame().stack_pop().value.astype(np.uint64)
        a = current_state.stack.get_current_frame().stack_pop().value.astype(np.uint64)
        result = 1 if a > b else 0
        current_state.stack.get_current_frame().stack_push(I32(np.uint32(result)))

    def generate_code(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]) -> str:
        return "i64.gt_u"

    def get_byte_code_size(self):
        return 1

class Int64GeS(AbstractTile):
    name = "I64GeS"

    @staticmethod
    def can_be_placed(current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        if len(current_state.stack.get_current_frame().stack) < 2:
            return False
        b = current_state.stack.get_current_frame().stack_peek(1)
        a = current_state.stack.get_current_frame().stack_peek(2)
        return isinstance(a, I64) and isinstance(b, I64)

    def apply(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        b = current_state.stack.get_current_frame().stack_pop().value.astype(np.int64)
        a = current_state.stack.get_current_frame().stack_pop().value.astype(np.int64)
        result = 1 if a >= b else 0
        current_state.stack.get_current_frame().stack_push(I32(np.uint32(result)))

    def generate_code(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]) -> str:
        return "i64.ge_s"

    def get_byte_code_size(self):
        return 1

class Int64GeU(AbstractTile):
    name = "I64GeU"

    @staticmethod
    def can_be_placed(current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        if len(current_state.stack.get_current_frame().stack) < 2:
            return False
        b = current_state.stack.get_current_frame().stack_peek(1)
        a = current_state.stack.get_current_frame().stack_peek(2)
        return isinstance(a, I64) and isinstance(b, I64)

    def apply(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        b = current_state.stack.get_current_frame().stack_pop().value.astype(np.uint64)
        a = current_state.stack.get_current_frame().stack_pop().value.astype(np.uint64)
        result = 1 if a >= b else 0
        current_state.stack.get_current_frame().stack_push(I32(np.uint32(result)))

    def generate_code(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]) -> str:
        return "i64.ge_u"

    def get_byte_code_size(self):
        return 1

class Int64ExtendI32S(AbstractTile):
    name = "I64ExtendI32S"

    @staticmethod
    def can_be_placed(current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        if len(current_state.stack.get_current_frame().stack) < 1:
            return False
        a = current_state.stack.get_current_frame().stack_peek(1)
        return isinstance(a, I32)

    def apply(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        value = current_state.stack.get_current_frame().stack_pop().value.astype(np.int32)
        result = np.int64(value)
        current_state.stack.get_current_frame().stack_push(I64(result))

    def generate_code(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]) -> str:
        return "i64.extend_i32_s"

    def get_byte_code_size(self):
        return 1

class Int64ExtendI32U(AbstractTile):
    name = "I64ExtendI32U"

    @staticmethod
    def can_be_placed(current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        if len(current_state.stack.get_current_frame().stack) < 1:
            return False
        a = current_state.stack.get_current_frame().stack_peek(1)
        return isinstance(a, I32)

    def apply(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        value = current_state.stack.get_current_frame().stack_pop().value.astype(np.uint32)
        result = np.uint64(value)
        current_state.stack.get_current_frame().stack_push(I64(result))

    def generate_code(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]) -> str:
        return "i64.extend_i32_u"

    def get_byte_code_size(self):
        return 1

class Int64TruncF32S(AbstractTile):
    name = "I64TruncF32S"

    @staticmethod
    def can_be_placed(current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        if len(current_state.stack.get_current_frame().stack) < 1:
            return False
        a = current_state.stack.get_current_frame().stack_peek(1)
        if not isinstance(a, F32):
            return False
        if a.value < -2 ** 63 or a.value >= 2 ** 63:
            return False
        if math.isnan(a.value) or math.isinf(a.value):
            return False
        return True

    def apply(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        value = current_state.stack.get_current_frame().stack_pop().value.astype(np.float32)
        result = np.int64(np.trunc(value))
        current_state.stack.get_current_frame().stack_push(I64(result))

    def generate_code(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]) -> str:
        return "i64.trunc_f32_s"

    def get_byte_code_size(self):
        return 1

class Int64TruncF64S(AbstractTile):
    name = "I64TruncF64S"

    @staticmethod
    def can_be_placed(current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        if len(current_state.stack.get_current_frame().stack) < 1:
            return False
        a = current_state.stack.get_current_frame().stack_peek(1)
        if not isinstance(a, F64):
            return False
        if a.value < -2 ** 63 or a.value >= 2 ** 63:
            return False
        if math.isnan(a.value) or math.isinf(a.value):
            return False
        return True

    def apply(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        value = current_state.stack.get_current_frame().stack_pop().value.astype(np.float64)
        result = np.int64(np.trunc(value))
        current_state.stack.get_current_frame().stack_push(I64(result))

    def generate_code(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]) -> str:
        return "i64.trunc_f64_s"

    def get_byte_code_size(self):
        return 1

class Int64TruncF32U(AbstractTile):
    name = "I64TruncF32U"

    @staticmethod
    def can_be_placed(current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        if len(current_state.stack.get_current_frame().stack) < 1:
            return False
        a = current_state.stack.get_current_frame().stack_peek(1)
        if not isinstance(a, F32):
            return False
        if a.value < 0 or a.value >= 2 ** 64:
            return False
        if math.isnan(a.value) or math.isinf(a.value):
            return False
        return True

    def apply(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        value = current_state.stack.get_current_frame().stack_pop().value.astype(np.float32)
        result = np.uint64(np.trunc(value))
        current_state.stack.get_current_frame().stack_push(I64(result))

    def generate_code(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]) -> str:
        return "i64.trunc_f32_u"

    def get_byte_code_size(self):
        return 1

class Int64TruncF64U(AbstractTile):
    name = "I64TruncF64U"

    @staticmethod
    def can_be_placed(current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        if len(current_state.stack.get_current_frame().stack) < 1:
            return False
        a = current_state.stack.get_current_frame().stack_peek(1)
        if not isinstance(a, F64):
            return False
        if a.value < 0 or a.value >= 2 ** 64:
            return False
        if math.isnan(a.value) or math.isinf(a.value):
            return False
        return True

    def apply(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        value = current_state.stack.get_current_frame().stack_pop().value.astype(np.float64)
        result = np.uint64(np.trunc(value))
        current_state.stack.get_current_frame().stack_push(I64(result))

    def generate_code(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]) -> str:
        return "i64.trunc_f64_u"

    def get_byte_code_size(self):
        return 1

class Int64ReinterpretF64(AbstractTile):
    name = "I64ReinterpretF64"

    @staticmethod
    def can_be_placed(current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        if len(current_state.stack.get_current_frame().stack) < 1:
            return False
        a = current_state.stack.get_current_frame().stack_peek(1)
        return isinstance(a, F64)

    def apply(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        value = current_state.stack.get_current_frame().stack_pop().value.astype(np.float64)
        result = value.view(np.int64)
        current_state.stack.get_current_frame().stack_push(I64(result))

    def generate_code(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]) -> str:
        return "i64.reinterpret_f64"

    def get_byte_code_size(self):
        return 1

class Int64Extend8S(AbstractTile):
    name = "I64Extend8S"

    @staticmethod
    def can_be_placed(current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        if len(current_state.stack.get_current_frame().stack) < 1:
            return False
        a = current_state.stack.get_current_frame().stack_peek(1)
        return isinstance(a, I64)

    def apply(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        value = current_state.stack.get_current_frame().stack_pop().value.astype(np.int64)
        result = np.int8(value)
        current_state.stack.get_current_frame().stack_push(I64(result))

    def generate_code(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]) -> str:
        return "i64.extend8_s"

    def get_byte_code_size(self):
        return 1

class Int64Extend16S(AbstractTile):
    name = "I64Extend16S"

    @staticmethod
    def can_be_placed(current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        if len(current_state.stack.get_current_frame().stack) < 1:
            return False
        a = current_state.stack.get_current_frame().stack_peek(1)
        return isinstance(a, I64)

    def apply(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        value = current_state.stack.get_current_frame().stack_pop().value.astype(np.int64)
        result = np.int64(np.int16(value))
        current_state.stack.get_current_frame().stack_push(I64(result))

    def generate_code(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]) -> str:
        return "i64.extend16_s"

    def get_byte_code_size(self):
        return 1

class Int64Extend32S(AbstractTile):
    name = "I64Extend32S"

    @staticmethod
    def can_be_placed(current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        if len(current_state.stack.get_current_frame().stack) < 1:
            return False
        a = current_state.stack.get_current_frame().stack_peek(1)
        return isinstance(a, I64)

    def apply(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        value = current_state.stack.get_current_frame().stack_pop().value.astype(np.int64)
        result = np.int64(np.int32(value))
        current_state.stack.get_current_frame().stack_push(I64(result))

    def generate_code(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]) -> str:
        return "i64.extend32_s"

    def get_byte_code_size(self):
        return 1

class Int64Store(AbstractTile):
    name = "I64Store"

    def __init__(self, seed: int):
        super().__init__(seed)

    @staticmethod
    def can_be_placed(current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        if len(current_state.stack.get_current_frame().stack) < 2:
            return False
        offset = current_state.stack.get_current_frame().stack_peek(2)
        if not isinstance(offset, I32):
            return False
        value = current_state.stack.get_current_frame().stack_peek(1)
        if not isinstance(value, I64):
            return False
        if offset.value.astype(np.uint32) >= MEMORY_MAX_WRITE_INDEX - 8:
            return False
        return True

    def apply(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        value = current_state.stack.get_current_frame().stack_pop()
        offset = current_state.stack.get_current_frame().stack_pop()
        current_state.memory.i64_store(offset.value.astype(np.uint32), value.value.astype(np.uint64))

    def generate_code(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]) -> str:
        return f"i64.store"

    def get_byte_code_size(self):
        return 2

class Int64Store8(AbstractTile):
    name = "I64Store8"

    def __init__(self, seed: int):
        super().__init__(seed)

    @staticmethod
    def can_be_placed(current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        if len(current_state.stack.get_current_frame().stack) < 2:
            return False
        offset = current_state.stack.get_current_frame().stack_peek(2)
        value = current_state.stack.get_current_frame().stack_peek(1)
        if not isinstance(offset, I32) or not isinstance(value, I64):
            return False
        if offset.value.astype(np.uint32) >= MEMORY_MAX_WRITE_INDEX - 1:
            return False
        return True

    def apply(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        value = current_state.stack.get_current_frame().stack_pop()
        offset = current_state.stack.get_current_frame().stack_pop()
        current_state.memory.i64_store8(offset.value.astype(np.uint32), int(value.value.astype(np.uint64)) & 0xFF)

    def generate_code(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]) -> str:
        return f"i64.store8"

    def get_byte_code_size(self):
        return 2

class Int64Store16(AbstractTile):
    name = "I64Store16"

    def __init__(self, seed: int):
        super().__init__(seed)

    @staticmethod
    def can_be_placed(current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        if len(current_state.stack.get_current_frame().stack) < 2:
            return False
        offset = current_state.stack.get_current_frame().stack_peek(2)
        value = current_state.stack.get_current_frame().stack_peek(1)
        if not isinstance(offset, I32) or not isinstance(value, I64):
            return False
        if offset.value.astype(np.uint32) >= MEMORY_MAX_WRITE_INDEX - 2:
            return False
        return True

    def apply(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        value = current_state.stack.get_current_frame().stack_pop()
        offset = current_state.stack.get_current_frame().stack_pop()
        current_state.memory.i64_store16(offset.value.astype(np.uint32), int(value.value.astype(np.uint64)) & 0xFFFF)

    def generate_code(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]) -> str:
        return f"i64.store16"

    def get_byte_code_size(self):
        return 2

class Int64Store32(AbstractTile):
    name = "I64Store32"

    def __init__(self, seed: int):
        super().__init__(seed)

    @staticmethod
    def can_be_placed(current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        if len(current_state.stack.get_current_frame().stack) < 2:
            return False
        offset = current_state.stack.get_current_frame().stack_peek(2)
        value = current_state.stack.get_current_frame().stack_peek(1)
        if not isinstance(offset, I32) or not isinstance(value, I64):
            return False
        if offset.value.astype(np.uint32) >= MEMORY_MAX_WRITE_INDEX - 4:
            return False
        return True

    def apply(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        value = current_state.stack.get_current_frame().stack_pop()
        offset = current_state.stack.get_current_frame().stack_pop()
        current_state.memory.i64_store32(offset.value.astype(np.uint32), int(value.value.astype(np.uint64)) & 0xFFFFFFFF)

    def generate_code(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]) -> str:
        return f"i64.store32"

    def get_byte_code_size(self):
        return 2

class Int64Load(AbstractTile):
    name = "I64Load"

    def __init__(self, seed: int):
        super().__init__(seed)

    @staticmethod
    def can_be_placed(current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        if len(current_state.stack.get_current_frame().stack) < 1:
            return False
        offset = current_state.stack.get_current_frame().stack_peek(1)
        if not isinstance(offset, I32):
            return False
        if offset.value.astype(np.uint32) >= MEMORY_MAX_WRITE_INDEX - 8:
            return False
        return True

    def apply(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        offset = current_state.stack.get_current_frame().stack_pop()
        value = current_state.memory.i64_load(offset.value.astype(np.uint32))
        current_state.stack.get_current_frame().stack_push(I64(value))

    def generate_code(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]) -> str:
        return f"i64.load"

    def get_byte_code_size(self):
        return 2

class Int64Load8U(AbstractTile):
    name = "I64Load8U"

    def __init__(self, seed: int):
        super().__init__(seed)

    @staticmethod
    def can_be_placed(current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        if len(current_state.stack.get_current_frame().stack) < 1:
            return False
        offset = current_state.stack.get_current_frame().stack_peek(1)
        if not isinstance(offset, I32):
            return False
        if offset.value.astype(np.uint32) >= MEMORY_MAX_WRITE_INDEX - 1:
            return False
        return True

    def apply(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        offset = current_state.stack.get_current_frame().stack_pop()
        value = current_state.memory.i64_load8_u(offset.value.astype(np.uint32))
        current_state.stack.get_current_frame().stack_push(I64(value))

    def generate_code(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]) -> str:
        return "i64.load8_u"

    def get_byte_code_size(self):
        return 2

class Int64Load8S(AbstractTile):
    name = "I64Load8S"

    def __init__(self, seed: int):
        super().__init__(seed)

    @staticmethod
    def can_be_placed(current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        if len(current_state.stack.get_current_frame().stack) < 1:
            return False
        offset = current_state.stack.get_current_frame().stack_peek(1)
        if not isinstance(offset, I32):
            return False
        if offset.value.astype(np.uint32) >= MEMORY_MAX_WRITE_INDEX - 1:
            return False
        return True

    def apply(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        offset = current_state.stack.get_current_frame().stack_pop()
        value = current_state.memory.i64_load8_s(offset.value.astype(np.uint32))
        current_state.stack.get_current_frame().stack_push(I64(value))

    def generate_code(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]) -> str:
        return "i64.load8_s"

    def get_byte_code_size(self):
        return 2

class Int64Load16U(AbstractTile):
    name = "I64Load16U"

    def __init__(self, seed: int):
        super().__init__(seed)

    @staticmethod
    def can_be_placed(current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        if len(current_state.stack.get_current_frame().stack) < 1:
            return False
        offset = current_state.stack.get_current_frame().stack_peek(1)
        if not isinstance(offset, I32):
            return False
        if offset.value.astype(np.uint32) >= MEMORY_MAX_WRITE_INDEX - 2:
            return False
        return True

    def apply(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        offset = current_state.stack.get_current_frame().stack_pop()
        value = current_state.memory.i64_load16_u(offset.value.astype(np.uint32))
        current_state.stack.get_current_frame().stack_push(I64(value))

    def generate_code(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]) -> str:
        return "i64.load16_u"

    def get_byte_code_size(self):
        return 2

class Int32Load16S(AbstractTile):
    name = "I64Load16S"

    def __init__(self, seed: int):
        super().__init__(seed)

    @staticmethod
    def can_be_placed(current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        if len(current_state.stack.get_current_frame().stack) < 1:
            return False
        offset = current_state.stack.get_current_frame().stack_peek(1)

        if not isinstance(offset, I32):
            return False
        if offset.value.astype(np.uint32) >= MEMORY_MAX_WRITE_INDEX - 2:
            return False
        return True

    def apply(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        offset = current_state.stack.get_current_frame().stack_pop()
        value = current_state.memory.i64_load16_s(offset.value.astype(np.uint32))
        current_state.stack.get_current_frame().stack_push(I64(value))

    def generate_code(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]) -> str:
        return "i64.load16_s"

    def get_byte_code_size(self):
        return 2

class Int64Load32U(AbstractTile):
    name = "I64Load32U"

    def __init__(self, seed: int):
        super().__init__(seed)

    @staticmethod
    def can_be_placed(current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        if len(current_state.stack.get_current_frame().stack) < 1:
            return False
        offset = current_state.stack.get_current_frame().stack_peek(1)
        if not isinstance(offset, I32):
            return False
        if offset.value.astype(np.uint32) >= MEMORY_MAX_WRITE_INDEX - 4:
            return False
        return True

    def apply(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        offset = current_state.stack.get_current_frame().stack_pop()
        value = current_state.memory.i64_load32_u(offset.value.astype(np.uint32))
        current_state.stack.get_current_frame().stack_push(I64(value))

    def generate_code(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]) -> str:
        return "i64.load32_u"

    def get_byte_code_size(self):
        return 2

class Int64Load32S(AbstractTile):
    name = "I64Load32S"

    def __init__(self, seed: int):
        super().__init__(seed)

    @staticmethod
    def can_be_placed(current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        if len(current_state.stack.get_current_frame().stack) < 1:
            return False
        offset = current_state.stack.get_current_frame().stack_peek(1)
        if not isinstance(offset, I32):
            return False
        if offset.value.astype(np.uint32) >= MEMORY_MAX_WRITE_INDEX - 4:
            return False
        return True

    def apply(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]):
        offset = current_state.stack.get_current_frame().stack_pop()
        value = current_state.memory.i64_load32_s(offset.value.astype(np.uint32))
        current_state.stack.get_current_frame().stack_push(I64(value))

    def generate_code(self, current_state: GlobalState, current_function: Function, current_blocks: List[Block]) -> str:
        return "i64.load32_s"

    def get_byte_code_size(self):
        return 2

