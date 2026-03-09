from python:3.13-alpine
workdir /app
copy app/ ./
run pip install -r requirements.txt
cmd ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
