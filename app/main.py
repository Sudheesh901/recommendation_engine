from fastapi import FastAPI
from prometheus_fastapi_instrumentator import Instrumentator
from app.routes import recommendation


app = FastAPI()

Instrumentator().instrument(app).expose(app)

@app.get("/")
def read_root():
    return {"Message": "Welcome to Intelligent learning system"}

app.include_router(recommendation.router, prefix="/recommendation", tags=["Recommendation"])
