FROM python:3.11-slim
WORKDIR /app
RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*
COPY app.py embed.py k8s.txt ./
COPY templates ./templates
RUN pip install fastapi uvicorn chromadb ollama jinja2
RUN python embed.py
EXPOSE 8000
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]
