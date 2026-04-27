import os
from dotenv import load_dotenv

ENV = os.getenv("ENV", "local")

if ENV == "docker":
    load_dotenv(".env.docker")
else:
    load_dotenv(".env.local")

class Settings:
    REDIS_HOST = os.getenv("REDIS_HOST", "localhost")
    DATABASE_URL = os.getenv("DATABASE_URL")

settings = Settings()