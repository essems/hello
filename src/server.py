from fastapi import FastAPI

app = FastAPI()

@app.get("/")
async def main():
    return "hello world 0.1.1"

@app.get("/hello")
async def hello():
    return "hello"

@app.get("/world")
async def world():
    return "world"