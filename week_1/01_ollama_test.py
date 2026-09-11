import os

from dotenv import load_dotenv
from ollama import chat

load_dotenv()

model = os.getenv("OLLAMA_MODEL", "gemma3:270m")

response = chat(
    model=model,
    messages=[
        {
            "role": "user",
            "content": "Explain what an LLM is in three simple points.",
        }
    ],
)

print(response.message.content)