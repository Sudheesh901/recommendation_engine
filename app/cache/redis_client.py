from app.core.config import settings
import redis


redis_client = redis.Redis(
    host=settings.REDIS_HOST,
    port=6379,
    decode_responses=True,
    socket_connect_timeout=2,
    socket_timeout=2
)