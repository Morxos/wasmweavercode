import os

from azure.identity import get_bearer_token_provider, DefaultAzureCredential
from openai import AzureOpenAI

from experiments.eval.models.model import Model

endpoint = os.getenv("ENDPOINT_URL", "https://openai-aiattack-msa-001333-swedencentral-01-freeexperiment.openai.azure.com/")
deployment = os.getenv("DEPLOYMENT_NAME", "gpt-4o")




class O4Mini(Model):
    def __init__(self):
        self.name = "o4-mini"
        self.platform = "openai"
        self.dir_name = "o4_mini"
        token_provider = get_bearer_token_provider(
            DefaultAzureCredential(),
            "https://cognitiveservices.azure.com/.default"
        )

        self.client = AzureOpenAI(
            azure_endpoint=endpoint,
            azure_ad_token_provider=token_provider,
            api_version="2025-01-01-preview",
            )

    def predict(self, prompt: str):
        print("Predicting with O4Mini...")
        print(prompt)
        response = self.client.chat.completions.create(
            model=self.name,
            messages=[{'role': 'user', 'content': prompt}],
            max_tokens=16384
        )



        return response.choices[0].message.content

class Gpt41(Model):
    def __init__(self):
        self.name = "gpt-4o"
        self.platform = "openai"
        self.dir_name = "gpt_4_1"
        token_provider = get_bearer_token_provider(
            DefaultAzureCredential(),
            "https://cognitiveservices.azure.com/.default"
        )

        self.client = AzureOpenAI(
            azure_endpoint=endpoint,
            azure_ad_token_provider=token_provider,
            api_version="2025-01-01-preview",
        )

    def predict(self, prompt: str) -> str:
        """Streams a chat completion, printing tokens as they arrive and
        returning the full response once complete."""
        print("Predicting with Gpt41...")
        print(prompt)

        # Stream the response
        response = self.client.chat.completions.create(
            model=self.name,
            messages=[{"role": "user", "content": prompt}],
            max_tokens=16384
        )

        return response.choices[0].message.content

