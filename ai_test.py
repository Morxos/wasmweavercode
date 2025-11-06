import os
from openai import AzureOpenAI
from azure.identity import DefaultAzureCredential, get_bearer_token_provider

# ----------------------------------------------------------------------
# 1 . Configuration
# ----------------------------------------------------------------------
AZURE_OPENAI_ENDPOINT   = os.getenv(
    "ENDPOINT_URL",
    "https://openai-aiattack-001333-canadaeast-01-freeexperiment.openai.azure.com/",
)

AZURE_OPENAI_DEPLOYMENT = os.getenv("DEPLOYMENT_NAME", "gpt-35-turbo")

# ----------------------------------------------------------------------
# 2 . Authenticate with Entra ID (a.k.a. Azure AD)
# ----------------------------------------------------------------------
token_provider = get_bearer_token_provider(
    DefaultAzureCredential(),                # Tries env, CLI, VS Code, Azure IMDS, …
    "https://cognitiveservices.azure.com/.default"
)

client = AzureOpenAI(
    azure_endpoint        = AZURE_OPENAI_ENDPOINT,
    azure_ad_token_provider = token_provider,
    api_version           = "2025-01-01-preview",
)

# ----------------------------------------------------------------------
# 3 . Build a *non-empty* messages array
# ----------------------------------------------------------------------
messages = [
    {"role": "system", "content": "You are a helpful assistant."},
    {"role": "user",   "content": "Hello, can you tell me a joke about WebAssembly?"}
]

# ----------------------------------------------------------------------
# 4 . Call the chat completion endpoint
# ----------------------------------------------------------------------
response = client.chat.completions.create(
    model    = AZURE_OPENAI_DEPLOYMENT,   # deployment name in your Azure OpenAI resource
    messages = messages,
    max_tokens = 100,                     # optional, but good practice
)

print(response.choices[0].message.content)