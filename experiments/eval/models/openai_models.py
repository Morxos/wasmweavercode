from openai import OpenAI

from experiments.eval.models.model import Model

OPENAI_TOKEN = ""

class O4Mini(Model):
    def __init__(self):
        self.name = "o4-mini"
        self.platform = "openai"
        self.dir_name = "o4_mini"

    def predict(self, prompt: str):
        client = OpenAI(api_key=OPENAI_TOKEN,timeout=100000,max_retries=0)
        response = client.chat.completions.create(
            model=self.name,
            messages=[{'role': 'user', 'content': prompt}],
        )

        return response.choices[0].message.content

class Gpt41(Model):
    def __init__(self):
        self.name = "gpt-4.1"
        self.platform = "openai"
        self.dir_name = "gpt_4_1"

    def predict(self, prompt: str):
        client = OpenAI(api_key=OPENAI_TOKEN,timeout=100000,max_retries=0)
        response = client.chat.completions.create(
            model=self.name,
            messages=[{'role': 'user', 'content': prompt}],
        )

        return response.choices[0].message.content

