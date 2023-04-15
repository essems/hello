FROM python:alpine

WORKDIR /app

COPY requirements.txt ./ 

RUN pip install --no-cache-dir -r requirements.txt

COPY src src

EXPOSE 8000

CMD uvicorn src.server:app --host 0.0.0.0



