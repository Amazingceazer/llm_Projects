# LLM Engineering Journey 🤖

A hands-on learning repository documenting my journey into **LLM Engineering**.

This repository contains my notes, experiments, Python implementations, exercises, and projects as I progress through my LLM Engineering course.

The goal is to move beyond simply using AI APIs and develop a practical understanding of how to build, integrate, evaluate, and deploy applications powered by Large Language Models.

---

## 🎯 Learning Goals

Throughout this journey, I am focusing on:

- Python for AI and LLM Engineering
- Large Language Models (LLMs)
- Prompt Engineering
- Ollama and local LLMs
- OpenAI APIs
- LLM application development
- Streaming LLM responses
- Embeddings
- Vector databases
- Retrieval-Augmented Generation (RAG)
- Tool calling and AI agents
- LLM evaluation
- Model fine-tuning
- QLoRA
- AI automation
- Building practical AI systems

---



## 🛠️ Development Environment



### Operating System

Linux

### Python

Python 3.11

### Environment

Conda

Environment name:

```bash
llm-project

#Activate it with:
conda activate llm-project


Local LLM

Ollama

The project currently uses lightweight local models where possible because of limited system resources.

📁 Repository Structure
llm_Projects/
│
├── week_1/
│   ├── 01_ollama_test.py
│   ├── 02_ollama_stream.py
│   └── ...
│
├── week_2/
│   └── ...
│
├── week_3/
│   └── ...
│
├── .gitignore
├── environment.yml
├── requirements.txt
├── setup_uv.sh
├── test_environment.ipynb
├── uv.lock
├── LICENSE
└── README.md
```

"New weekly folders will be added as I progress through the course".

📚 Weekly Progress
Week 1 — LLM Fundamentals & Ollama
 Set up Python environment
 Configure Conda environment
 Install Ollama
 Connect Python to Ollama
 Run a local LLM
 Generate responses using Python
 Explore streaming responses
 Continue daily exercises
Week 2

Coming soon.

Week 3

Coming soon.

🧪 Experiments

This repository is intentionally hands-on.

Each experiment is designed to answer questions such as:

How do LLMs work?
How can I interact with an LLM programmatically?
How can I stream model responses?
How can I build applications around LLMs?
How can local models be used instead of cloud APIs?
How can LLMs work with external knowledge?
How can LLMs interact with tools and real-world systems?

🔐 Environment Variables

Sensitive credentials are stored locally in a .env file.

Example:

OPENAI_API_KEY=your_api_key_here

The .env file is intentionally excluded from Git using .gitignore.

Never commit API keys, passwords, tokens, or other secrets to this repository.

🔄 Git Workflow

This repository follows a simple workflow.

Before starting work:

git pull

After completing an exercise:

git status
git add .
git commit -m "feat: complete week 1 day 1"
git push

Example:

git add .
git commit -m "feat: add Ollama streaming example"
git push

🚀 Long-Term Direction

This learning journey is part of a broader goal of becoming an LLM Engineer focused on practical AI systems and GeoAI.

Areas I intend to explore include:

LLMs
  ↓
RAG
  ↓
AI Agents
  ↓
Spatial Intelligence
  ↓
GeoAI
  ↓
Intelligent GIS Systems

The long-term objective is to combine:

LLM Engineering
Retrieval-Augmented Generation
AI Agents
Remote Sensing
GIS
Spatial Analytics
Geospatial Intelligence

to build useful, human-centered intelligent systems.

📈 Progress

This repository will evolve continuously as I learn.

Day 1 → Day 7 → Week 1 → Week 2 → ...

Every commit represents another step in the journey.

📜 License

See the LICENSE file for details.