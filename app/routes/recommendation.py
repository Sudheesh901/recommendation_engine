import json
from fastapi import APIRouter, HTTPException
from recommender.content_based import get_similar_content
from recommender.collaborative import recommend_for_user
from recommender.hybrid import hybrid_recommend
from recommender.utils import user_exists
from app.cache.redis_client import redis_client
from app.tasks.tasks import compute_user_recommendations
import logging

logger = logging.getLogger(__name__)


router = APIRouter()

# ---------------- HEALTH ----------------

@router.get("/health")
def health():
    try:
        redis_client.ping()
        return {"status": "ok"}
    except Exception:
        return {"status": "error"}
# ---------------- CONTENT ----------------

@router.get("/content/{content_id}")
def recommend_content(content_id:int):
    cache_key = f"content:{content_id}"

    try:
        cached = redis_client.get(cache_key)
        if cached:
            return {
                "recommended_content": json.loads(cached),
                "source":"cache"
            }
    except Exception as e:
        logger.warning(f"Redis GET error: {e}")

    recommendations=get_similar_content(content_id)

    try:
        redis_client.setex(cache_key, 300, json.dumps(recommendations))
    except Exception as e:
        logger.warning(f"Redis SET error: {e}")

    return {"recommended_content": recommendations,
            "source":"computed"
    }

# ---------------- USER ----------------

@router.get("/user/{user_id}")
def recommend_user(user_id:int):
    cache_key = f"user:{user_id}"

    # 1. Try cache
    try:

        cached = redis_client.get(cache_key)
        if cached:
            return {
                "recommended_content": json.loads(cached),
                "source":"cache"
            }
    except Exception as e:
        logger.warning(f"Redis GET error: {e}")

    # 2. Trigger async job (NON-BLOCKING)
    try:
        compute_user_recommendations.delay(user_id)
    except Exception as e:
        logger.warning(f"Celery dispatch error: {e}")
    
     # 3. Fallback (first request only)

    recommendations = recommend_for_user(user_id)

    try:
        # Store in Redis (TTL = 5 mins)
        redis_client.setex(cache_key, 300, json.dumps(recommendations))
    except Exception as e:
        logger.warning(f"Redis SET error: {e}")

    return {"recommended_content": recommendations,
            "source":"computed"
    }

# ---------------- HYBRID ----------------

@router.get("/hybrid/{user_id}")
def recommend_hybrid(user_id:int):
    cache_key = f"hybrid:{user_id}"

    if not user_exists(user_id):
        raise HTTPException(status_code=404, detail="User not found")
    
    try:
        cached = redis_client.get(cache_key)
        if cached:
            return {
                "recommended_content": json.loads(cached),
                "source":"cache"
            }
    
    except Exception as e:
        logger.warning(f"Redis GET error: {e}")
    
    try:
        recommendations=hybrid_recommend(user_id)

        if not recommendations:
            raise HTTPException(status_code=404, detail="No recommendations found")
        
        try:
            redis_client.setex(cache_key, 300, json.dumps(recommendations))
        except Exception as e:
            logger.warning(f"Redis SET error: {e}")

        return {"recommended_content": recommendations,
                "source": "computed"
        }
       
    except HTTPException:
        raise

    except Exception as e:
        raise HTTPException(status_code=500, detail=str(e))


