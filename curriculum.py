import random
from typing import List


class CurriculumInstance:
    def __init__(self, step_sizes: List[int], objective_mins: List[float], objective_maxs: List[float], objective_starts: List[float], constraints_update: List):
        self.step_sizes = step_sizes
        #Check if all lists have the same length
        if not (len(step_sizes) == len(objective_mins) == len(objective_maxs) == len(objective_starts)):
            raise ValueError("All input lists must have the same length.")
        self.objective_maxs = objective_maxs
        self.objective_starts = objective_starts
        self.objective_mins = objective_mins
        self.constraints_update = constraints_update

        self.current_objective_maxs = objective_starts.copy()
        #Add one step to all current maxs to start easier
        for i in range(len(self.current_objective_maxs)):
            self.current_objective_maxs[i] = min(self.current_objective_maxs[i] + self.step_sizes[i], self.objective_maxs[i])

        self.current_objective_values = objective_starts.copy()

    def draw_next_values(self):
        for i in range(len(self.current_objective_values)):
            self.current_objective_values[i] = random.uniform(self.objective_mins[i], self.current_objective_maxs[i])

        for objective_maxs, constraint_update in zip(self.current_objective_maxs, self.constraints_update):
            if constraint_update is not None:
                print("Updating constraint to max:", objective_maxs)
                constraint_update(objective_maxs)


    def increase_difficulty(self):
        for i in range(len(self.current_objective_maxs)):
            self.current_objective_maxs[i] = min(self.current_objective_maxs[i] + self.step_sizes[i], self.objective_maxs[i])

    def get_current_objective_values_normalized(self):
        normalized = []
        for i in range(len(self.current_objective_values)):
            norm_value = (self.current_objective_values[i] - self.objective_mins[i]) / (self.current_objective_maxs[i] - self.objective_mins[i])
            normalized.append(norm_value)
        return normalized

    def get_current_objective_values_with_max(self):
        values = []
        for i in range(len(self.current_objective_values)):
            values.append((self.current_objective_values[i], self.current_objective_maxs[i]))
        print(values)
        return values