# SPDX-License-Identifier: MIT
# SPDX-FileCopyrightText: 2025 Siemens AG

from enum import Enum
from typing import List, Type


class ConstraintsViolatedError(Exception):
    """
    Exception raised when constraints are violated.
    """

    def __init__(self, message="Constraints are violated"):
        self.message = message
        super().__init__(self.message)

class ConstraintType(Enum):
    RUNTIME = 0
    STATIC = 1


class AbstractConstraint:
    """
    An abstract class for constraints.
    """

    def __init__(self, min_target=0, max_target=100, initial: float = 0):
        self.resource = initial
        self.initial = initial
        self.min_target = min_target
        self.max_target = max_target
        self.type = ConstraintType.STATIC

    def reset(self):
        """
        Resets the constraint to its initial state.
        """
        self.resource = self.initial

    def get_remaining_resource(self) -> float:
        """
        Returns the remaining resource.
        """
        return self.max_target - self.resource

    def is_fulfilled(self) -> bool:
        """
        Returns if the constraint is fulfilled.
        """
        return self.resource >= self.min_target

    def is_violated(self) -> bool:
        """
        Returns if the constraint is violated.
        """
        return self.resource > self.max_target#+self.max_target*0.5

    def update_resource(self, delta: float):
        """
        Updates the resource value.
        """
        self.resource += delta
        return self.resource

    def __str__(self):
        return f"AbstractConstraint(target=[{self.min_target}, {self.max_target}], resource={self.resource})"


class ResponseTimeConstraint(AbstractConstraint):
    """
    A constraint that limits the response time.
    """

    def __init__(self, min_target=0, max_target=100, initial: float = 0):
        super().__init__(min_target, max_target, initial)
        self.type = ConstraintType.RUNTIME

    def __str__(self):
        return f"ResponseTimeConstraint(target=[{self.min_target}, {self.max_target}], resource={self.resource})"


class ByteCodeSizeConstraint(AbstractConstraint):
    """
    A constraint that limits the bytecode.
    """

    def __init__(self, min_target=0, max_target=100, initial: float = 0):
        super().__init__(min_target, max_target, initial)
        self.type = ConstraintType.STATIC

    def __str__(self):
        return f"ByteCodeSizeConstraint(target=[{self.min_target}, {self.max_target}], resource={self.resource})"


class FuelConstraint(AbstractConstraint):
    """
    A constraint that limits the gas.
    """
    def __init__(self, min_target=0, max_target=100, initial: float = 0):
        super().__init__(min_target, max_target, initial)
        self.type = ConstraintType.RUNTIME

    def __str__(self):
        return f"FuelConstraint(target=[{self.min_target}, {self.max_target}], resource={self.resource})"


class Constraints:
    """
    A state that stores all constraints.
    """

    def __init__(self, constraints: List[AbstractConstraint] = None):
        self.constraints = []
        if constraints:
            self.constraints = constraints

    def get_all_by_type(self, constraint_type: ConstraintType):
        return_metrics = []
        for constraint in self.constraints:
            if constraint.type == constraint_type:
                return_metrics.append(constraint)
        return return_metrics

    def set_all(self, constraints: List[AbstractConstraint]):
        """
        Sets all constraints.
        """
        for constraint in constraints:
            for i, existing_constraint in enumerate(self.constraints):
                if isinstance(existing_constraint, type(constraint)):
                    self.constraints[i] = constraint
                    break
            else:
                self.constraints.append(constraint)

    def reset_all(self):
        """
        Resets all constraints.
        """
        for constraint in self.constraints:
            constraint.reset()

    def divide_remaining_resources(self, constraint_type: ConstraintType, divisor: float):
        """
        Divides the remaining resources of a constraint type by a divisor.
        """
        for constraint in self.get_all_by_type(constraint_type):
            remaining_resources = constraint.get_remaining_resource()
            constraint.resource = constraint.min_target+(remaining_resources / divisor)


    def add(self, constraint: AbstractConstraint):
        """
        Adds a constraint to the state.
        """
        self.constraints.append(constraint)

    def __getitem__(self, item: Type[AbstractConstraint]):
        """
        Returns a constraint by type.
        """
        for constraint in self.constraints:
            if isinstance(constraint, item):
                return constraint
        return None

    def remaining_resources(self, constraint_type: Type[AbstractConstraint]) -> float:
        """
        Returns the remaining resources of a constraint type.
        """
        if self[constraint_type] is None:
            #Return infinity if the constraint type is not found
            return float('inf')
        return self[constraint_type].get_remaining_resource()

    def all_fulfilled(self) -> bool:
        """
        Returns if all constraints are fulfilled.
        """
        return all(constraint.is_fulfilled() for constraint in self.constraints)

    def any_violated(self) -> bool:
        """
        Returns if any constraint is violated.
        """
        return any(constraint.is_violated() for constraint in self.constraints)

    def is_finished(self) -> bool:
        """
        Returns if all constraints are fulfilled and no constraint is violated.
        """
        return self.all_fulfilled() and not self.any_violated()

    def __str__(self):
        return f"Constraints(constraints={self.constraints})"
