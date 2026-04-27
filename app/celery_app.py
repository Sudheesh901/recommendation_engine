from celery import Celery
from app.core.config import settings


celery_app = Celery(
    "recommender",
    broker=f"redis://{settings.REDIS_HOST}:6379/0",
    backend=f"redis://{settings.REDIS_HOST}:6379/0"
)


celery_app.autodiscover_tasks(["app.tasks"])