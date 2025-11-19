# SPDX-License-Identifier: MIT
# SPDX-FileCopyrightText: 2025 Siemens AG

class Model:
    """
    Abstract LLM class for all models used in the experiments.
    """
    def predict(self, prompt: str):
        raise NotImplemented