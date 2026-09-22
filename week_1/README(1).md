# LLM Engineering Learning Journey

Welcome to my **LLM Engineering** learning repository.

I am using this repository to document my practical journey from Python fundamentals into **Large Language Models (LLMs), APIs, local models, embeddings, and Retrieval-Augmented Generation (RAG)**.

The goal is not only to complete tutorials, but to build a public record of small experiments, errors, debugging sessions, and working implementations.

---

## 🎯 Learning Goals

- Strengthen Python for AI engineering
- Understand how HTTP APIs work
- Learn how to communicate with LLMs programmatically
- Understand OpenAI API concepts
- Run and interact with local LLMs using Ollama
- Learn LLM streaming
- Understand JSON/API responses
- Learn embeddings and vector search
- Build Retrieval-Augmented Generation (RAG) systems
- Eventually apply LLMs to GeoAI and geospatial intelligence

---

## 🧠 What I Have Learned So Far

### 1. Python + HTTP Requests

I learned how Python can communicate with external services using the `requests` library.

Basic pattern:

```python
import requests

response = requests.get("https://example.com")

print(response.status_code)
```

For APIs, a POST request can send JSON data:

```python
response = requests.post(
    url,
    headers=headers,
    json=payload
)
```

---

### 2. Understanding HTTP Status Codes

Some important status codes I encountered:

| Code | Meaning |
|---|---|
| 200 | Request succeeded |
| 401 | Authentication problem |
| 403 | Access forbidden |
| 404 | Resource not found |
| 429 | Too many requests / quota or billing limit |
| 500 | Server-side error |

I learned that a `429` response from the OpenAI API can mean that the API request reached OpenAI successfully but could not be processed because the account/organization had exhausted its available API credits.

---

### 3. Debugging Network Errors

I encountered:

```text
OSError: [Errno 101] Network is unreachable
```

I learned to debug networking layer-by-layer rather than immediately reinstalling Python packages.

Useful tests:

```bash
ping -c 4 8.8.8.8
ping -c 4 google.com
```

and:

```bash
python -c "import requests; print(requests.get('https://www.google.com', timeout=10).status_code)"
```

A successful:

```text
200
```

confirmed that Python, `requests`, HTTPS, DNS, and internet connectivity were working.

---

## 🤖 OpenAI API Experiment

I learned the basic structure of an LLM API request:

```text
Python
   ↓
HTTP POST
   ↓
API endpoint
   ↓
Authentication
   ↓
JSON payload
   ↓
LLM
   ↓
JSON response
```

Example conceptual payload:

```python
payload = {
    "model": "gpt-5-nano",
    "input": "Tell me a fun fact"
}
```

The API returned HTTP `429` because there were no API credits remaining.

This was useful because it demonstrated that the request can reach the API successfully even when the API cannot fulfill it due to account quota/billing.

---

## 🦙 Ollama + Local LLMs

Because Ollama runs models locally, I can continue learning without depending on paid cloud API credits.

My successful local pipeline:

```text
Python
   ↓
requests
   ↓
localhost:11434
   ↓
Ollama
   ↓
gemma3:270m
   ↓
LLM response
```

Example:

```python
import requests

url = "http://localhost:11434/api/chat"

payload = {
    "model": "gemma3:270m",
    "messages": [
        {
            "role": "user",
            "content": "Tell me a fun fact"
        }
    ],
    "stream": False
}

response = requests.post(
    url,
    json=payload,
    timeout=60
)

print(response.status_code)

data = response.json()
print(data["message"]["content"])
```

Successful response:

```text
200
```

This confirmed that I successfully communicated with a local LLM through an HTTP API.

---

## ⚠️ An Important LLM Lesson

A local LLM can produce an answer that sounds convincing without necessarily being factually correct.

This is one reason **Retrieval-Augmented Generation (RAG)** is important.

Instead of:

```text
Question
   ↓
LLM
   ↓
Answer
```

RAG introduces external knowledge:

```text
Question
   ↓
Retriever
   ↓
Relevant documents/chunks
   ↓
Context
   ↓
LLM
   ↓
Grounded answer
```

---

## 🔎 My RAG Learning Path

The next stages of this repository will focus on:

### Stage 1 — LLM Fundamentals
- Python
- HTTP
- APIs
- JSON
- Authentication
- Error handling

### Stage 2 — Local LLMs
- Ollama
- Local models
- Chat APIs
- Streaming
- Prompting

### Stage 3 — Document Processing
- PDF extraction
- Text cleaning
- Chunking
- Metadata

### Stage 4 — Embeddings
- Embedding models
- Vector representations
- Similarity search

### Stage 5 — Vector Databases
- Chroma
- FAISS
- Other vector stores
- Metadata filtering

### Stage 6 — RAG
- Retrieval
- Context construction
- Grounded generation
- Evaluation

### Stage 7 — AI Engineering
- FastAPI
- RAG APIs
- Testing
- Docker
- Deployment
- Production architecture

### Stage 8 — GeoAI + LLMs

Eventually I want to apply these technologies to geospatial intelligence:

```text
LLMs
 +
RAG
 +
Remote Sensing
 +
GIS
 +
Spatial Data
 =
GeoAI Systems
```

---

## 📁 Repository Structure

The repository will evolve as I learn.

```text
llm_Projects/
│
├── week_1/
│   ├── Day1.ipynb
│   ├── Day2.ipynb
│   ├── 01_ollama_test.py
│   ├── 02_ollama_stream.py
│   └── ...
│
├── requirements.txt
├── environment.yml
├── setup_uv.sh
├── .gitignore
└── README.md
```

---

## 🛠️ Tools I'm Learning

- Python
- Jupyter Notebook
- Git & GitHub
- uv
- Virtual environments
- Ollama
- OpenAI APIs
- Requests
- FastAPI
- Embeddings
- Vector databases
- RAG
- GIS
- Remote Sensing
- GeoAI

---

## 📈 Progress Philosophy

I am intentionally documenting the small steps.

That includes:

- Successful experiments
- Failed experiments
- Error messages
- Debugging
- API experiments
- Environment setup
- Notes from courses
- Small scripts
- RAG prototypes

The objective is to show **progress through implementation**, not just completed projects.

---

## 🚀 Long-Term Direction

My long-term goal is to become an AI/LLM engineer capable of building systems that combine:

**LLMs + RAG + spatial intelligence + GIS + remote sensing.**

This repository is the beginning of that journey.

> Learn → Build → Break → Debug → Understand → Build again.

---

## 📌 Current Status

**Current focus:** LLM fundamentals + Ollama + API communication

**Next focus:** LLM streaming → embeddings → vector search → RAG

