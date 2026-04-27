import json
from app.celery_app import celery_app
from app.cache.redis_client import redis_client
from recommender.collaborative import recommend_for_user

@celery_app.task
def compute_user_recommendations(user_id: int):
    cache_key = f"user:{user_id}"

    recommendations = recommend_for_user(user_id)

    redis_client.setex(cache_key, 300, json.dumps(recommendations))

    return recommendations
