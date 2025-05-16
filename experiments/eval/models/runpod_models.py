from openai import OpenAI

from experiments.eval.models.model import Model

RUNPOD_TOKEN = ""

class Phi4Reasoning1(Model):
    def __init__(self):
        self.name = "microsoft/Phi-4-reasoning"
        self.dir_name = "phi_4_reasoning"
        self.endpoint = "https://oqv22mf6msnru6-8000.proxy.runpod.net/v1"
        self.platform = "runpod"

    def predict(self, prompt: str):
        client = OpenAI(api_key=RUNPOD_TOKEN, base_url=self.endpoint,timeout=100000,max_retries=0)
        stream = client.chat.completions.create(
            model=self.name,
            messages=[{'role': 'user', 'content': prompt}],
            stream=True,
            temperature=0.8,
            top_p=0.95,
            extra_body={
              "top_k": 50,
                "do_sample": True,
            },
        )
        total_text = ""
        for chunk in stream:
            if chunk.choices[0].delta.content:
                total_text += chunk.choices[0].delta.content
        return total_text.split("</think>")[-1]

class Phi4Reasoning2(Model):
    def __init__(self):
        self.name = "microsoft/Phi-4-reasoning"
        self.dir_name = "phi_4_reasoning"
        self.endpoint = "https://0jv36qtd072e0g-8000.proxy.runpod.net/v1"
        self.platform = "runpod"

    def predict(self, prompt: str):
        client = OpenAI(api_key=RUNPOD_TOKEN, base_url=self.endpoint,timeout=100000,max_retries=0)
        stream = client.chat.completions.create(
            model=self.name,
            messages=[{'role': 'user', 'content': prompt}],
            stream=True,
            temperature=0.8,
            top_p=0.95,
            extra_body={
              "top_k": 50,
                "do_sample": True,
            },
        )
        total_text = ""
        for chunk in stream:
            if chunk.choices[0].delta.content:
                total_text += chunk.choices[0].delta.content
        return total_text.split("</think>")[-1]

class Phi4Reasoning3(Model):
    def __init__(self):
        self.name = "microsoft/Phi-4-reasoning"
        self.dir_name = "phi_4_reasoning"
        self.endpoint = "https://r1swb5ww10yprb-8000.proxy.runpod.net/v1"
        self.platform = "runpod"

    def predict(self, prompt: str):
        client = OpenAI(api_key=RUNPOD_TOKEN, base_url=self.endpoint,timeout=100000,max_retries=0)
        stream = client.chat.completions.create(
            model=self.name,
            messages=[{'role': 'user', 'content': prompt}],
            stream=True,
            temperature=0.8,
            top_p=0.95,
            extra_body={
              "top_k": 50,
                "do_sample": True,
            },
        )
        total_text = ""
        for chunk in stream:
            if chunk.choices[0].delta.content:
                total_text += chunk.choices[0].delta.content
        return total_text.split("</think>")[-1]



class Qwen31(Model):
    def __init__(self):
        self.name = "Qwen/Qwen3-8B"
        self.dir_name = "qwen3"
        self.endpoint = "https://q4z269zay3gqc5-8000.proxy.runpod.net/v1"
        self.platform = "runpod"

    def predict(self, prompt: str):
        client = OpenAI(api_key=RUNPOD_TOKEN, base_url=self.endpoint,timeout=100000,max_retries=0)
        stream = client.chat.completions.create(
            model=self.name,
            messages=[{'role': 'user', 'content': prompt}],
            stream=True,
            temperature=0.6,
            top_p=0.95,
            extra_body={
              "top_k": 20
            },
        )
        total_text = ""
        for chunk in stream:
            if chunk.choices[0].delta.content:
                total_text += chunk.choices[0].delta.content
        return total_text.split("</think>")[-1]

class Qwen32(Model):
    def __init__(self):
        self.name = "Qwen/Qwen3-8B"
        self.dir_name = "qwen3"
        self.endpoint = "https://nahu6oh2squodt-8000.proxy.runpod.net/v1"
        self.platform = "runpod"

    def predict(self, prompt: str):
        client = OpenAI(api_key=RUNPOD_TOKEN, base_url=self.endpoint,timeout=100000,max_retries=0)
        stream = client.chat.completions.create(
            model=self.name,
            messages=[{'role': 'user', 'content': prompt}],
            stream=True,
            temperature=0.6,
            top_p=0.95,
            extra_body={
              "top_k": 20
            },
        )
        total_text = ""
        for chunk in stream:
            if chunk.choices[0].delta.content:
                total_text += chunk.choices[0].delta.content
        return total_text.split("</think>")[-1]

class Qwen33(Model):
    def __init__(self):
        self.name = "Qwen/Qwen3-8B"
        self.dir_name = "qwen3"
        self.endpoint = "https://uz21tyfmxn7vg4-8000.proxy.runpod.net/v1"
        self.platform = "runpod"

    def predict(self, prompt: str):
        client = OpenAI(api_key=RUNPOD_TOKEN, base_url=self.endpoint,timeout=100000,max_retries=0)
        stream = client.chat.completions.create(
            model=self.name,
            messages=[{'role': 'user', 'content': prompt}],
            stream=True,
            temperature=0.6,
            top_p=0.95,
            extra_body={
              "top_k": 20
            },
        )
        total_text = ""
        for chunk in stream:
            if chunk.choices[0].delta.content:
                total_text += chunk.choices[0].delta.content
        return total_text.split("</think>")[-1]

class Llama3(Model):
    def __init__(self):
        self.name = "meta-llama/Meta-Llama-3.1-8B-Instruct"
        self.endpoint = "https://hee7karfg8wcd2-8000.proxy.runpod.net/v1"
        self.platform = "runpod"
        self.dir_name = "llama3"

    def predict(self, prompt: str):
        client = OpenAI(api_key=RUNPOD_TOKEN, base_url=self.endpoint,timeout=100000,max_retries=0)
        stream = client.chat.completions.create(
            model=self.name,
            messages=[{'role': 'user', 'content': prompt}],
            stream=True
        )
        total_text = ""
        for chunk in stream:
            if chunk.choices[0].delta.content:
                total_text += chunk.choices[0].delta.content
        return total_text