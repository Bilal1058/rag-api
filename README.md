# Build a RAG API with FastAPI

![Image](http://learn.nextwork.org/radiant_purple_playful_oriental_melon/uploads/ai-devops-api_g3h4i5j6)

---

## Introducing Today's Project!

In this project i will create a RAG using fastapi ,ollama and chromadb which we can run locally and ask questions with it without accessing the need of internet


### Key services and concepts

Services I used were FastAPI, Ollama (for the LLM tinyllama), ChromaDB (for embeddings), and Uvicorn. Key concepts I learned include building APIs, using Retrieval-Augmented Generation (RAG), creating embeddings, and connecting an LLM to a knowledge base for dynamic question-answering.

### Challenges and wins

This project took me approximately 2-3 hours.The most challenging part was nothing(You made it easy). It was most rewarding to seeing the working.

### Why I did this project

I did this project because i wanna learn new skills

---

## Setting Up Python and Ollama

In this step, I'm setting up Python and Ollama. Python will be used for fastapi .Ollama is used for running llm on local machine. I need these tools because to make RAG and then use it for answering without internet.

### Python and Ollama setup

![Image](http://learn.nextwork.org/radiant_purple_playful_oriental_melon/uploads/ai-devops-api_i9j0k1l2)

### Verifying Python is working

### Ollama and tinyllama ready

Ollama is used to run llm on local models. I downloaded the tinyllama model because it's a llm which will generate answers The model will help my RAG API by generating answers.

---

## Setting Up a Python Workspace

In this step, I'm setting up python virtual environment along with dependencies needed like fastapi,uvicorn,chormadb,ollama. I need it because to run RAG and use it locally on my system privately without affecting other versions needed for other projects. 

### Python workspace setup

### Virtual environment

A virtual environment is like a separate/private environment to run a project privately without interfering with others. I created one for this project to use python for fastapi to use this specific version and don't disturb others.Once I activate it will make sure to use libraries and packages from this folder. To create a virtual environment, I typed
python -m venv venv

### Dependencies

The packages I installed are fastapi,uvicorn,chormadb,Ollama.
FastAPI is used for data validation using pydantic model.It is used for creating APIs with builtin functioning like handling requests,headers,json conversions,responses.
Chroma is used for text->embeddings vectors.
Uvicorn is used for listening and then send the incoming request to fastApi for further processing.
Ollama is used for running models on local machine like tinyllama which will generate answers using our documents(uses chromadb) and our question then generate a response using both things.

![Image](http://learn.nextwork.org/radiant_purple_playful_oriental_melon/uploads/ai-devops-api_u1v2w3x4)

---

## Setting Up a Knowledge Base

In this step, I'm creating a knowlede base. A knowledge base is like a extra information for my questions related. I need it because sometimes the small models generates hallucinations (confident but wrong) answers so to avoid this the model(chromadb) will use our knowledge base then generate answers using llm

### Knowledge base setup

![Image](http://learn.nextwork.org/radiant_purple_playful_oriental_melon/uploads/ai-devops-api_t1u2v3w4)

### Embeddings created

Embeddings are numerical representation of text. I created them by using chromadb. The db/ folder contains subfolders of embeddings in which they also have metadata . This is important for RAG because chromadb searches for most closest vector and return it(Bcz the knowledge base is stored in numerical vectors formS)

---

## Building the RAG API

In this step, I'm building a RAG API. An API is used for retreiving information can be access by others and send it to other apps. FastAPI is used to build api by python. I'm creating this because to use ollama and our knowledge base. 

### FastAPI setup

### How the RAG API works

My RAG API works by receiving question then searches in chromadb knowledge base then combining question and context(text by chromadb) to send it to ollama(llm like tinyllama) which will then generated a answers and send it to users.FastApi works on specific endpoints like in web url we have links just like that fastapi works on endpoints like in this /query on which it expects string(question).

![Image](http://learn.nextwork.org/radiant_purple_playful_oriental_melon/uploads/ai-devops-api_f3g4h5i6)

---

## Testing the RAG API

In this step, I'm testing my RAG API. I'll test it using command line.Swagger UI is fastApi feature where we can see our endpoints and try them without coding. I'll use it to test that my FastApi is working correctly.

### Testing the API

### API query breakdown

I queried my API by running the command
Invoke-RestMethod -Uri "http://127.0.0.1:8000/query?q=What is kubernetes?" -Method POST
The command uses the POST method, which means we want to send data. The API responded with answer and server says 200 ok.

![Image](http://learn.nextwork.org/radiant_purple_playful_oriental_melon/uploads/ai-devops-api_g3h4i5j6)

### Swagger UI exploration

Swagger UI is python FastApi feature used for testing endpoints like in our case /query. I used it to test our /query endpoint by asking a question using post method.The best part about using Swagger UI was builtin feature we don't need to manually type the code or by sending different requests.

---

## Adding Dynamic Content

In this project extension, I'm adding an endpoint through where others(users/apps) can update my knowledge base.

### Adding the /add endpoint

![Image](http://learn.nextwork.org/radiant_purple_playful_oriental_melon/uploads/ai-devops-api_w9x0y1z2)

### Dynamic content endpoint working

The /add endpoint allows me to add any information to my knowledge base. This is useful because  now i don't have to maually add info to my knowledge base also others can also add info to my knowledge base.

---
