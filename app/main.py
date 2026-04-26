from fastapi import FastAPI
from app.routes import recommendation


app = FastAPI()

@app.get("/")
def read_root():
    return {"Message": "Welcome to Intelligent learning system"}

app.include_router(recommendation.router, prefix="/recommendation", tags=["Recommendation"])
