import os

from dotenv import load_dotenv
from ollama import chat

load_dotenv()

model = os.getenv("OLLAMA_MODEL", "gemma3:270m")

stream = chat(
    model=model,
    messages=[
        {
            "role": "user",
            "content": "Explain Retrieval-Augmented Generation in simple terms.",
        }
    ],
    stream=True,
)

for chunk in stream:
    print(chunk["message"]["content"], end="", flush=True)

print()
