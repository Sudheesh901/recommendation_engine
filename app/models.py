from sqlalchemy import Column, Integer, String, Float, ForeignKey, DateTime
from datetime import datetime, timezone
from app.database import Base

class User(Base):
    __tablename__ = "users"

    id = Column(Integer, primary_key=True, index=True)
    goal = Column(String)
    level = Column(String)
    created_at = Column(DateTime, default=datetime.now(timezone.utc))

class Content(Base):
    __tablename__ = "content"

    id = Column(Integer, primary_key=True, index=True)
    title=Column(String)
    type=Column(String)
    category=Column(String)
    difficulty = Column(String)
    tags= Column(String)

class Interaction(Base):
    __tablename__ = "interactions"

    id = Column(Integer, primary_key=True, index=True)
    user_id = Column(Integer, ForeignKey("users.id"))
    content_id=Column(Integer, ForeignKey("content.id"))
    event_type = Column(String)
    timestamp = Column(DateTime, default=datetime.now(timezone.utc))