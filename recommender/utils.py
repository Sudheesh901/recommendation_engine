from sqlalchemy import func
from app.database import SessionLocal
from app.models import User, Interaction


db = SessionLocal()

def user_exists(user_id):
    user = db.query(User).filter(User.id == user_id).first()
    return user is not None
def get_popular_content(top_k=5):
    popular = (
        db.query(Interaction.content_id, func.count(Interaction.id).label("count"))
        .group_by(Interaction.content_id)
        .order_by(func.count(Interaction.id).desc())
        .limit(top_k)
        .all()
    )

    return [item[0] for item in popular]
def get_recent_content(user_id):
    interaction = (db.query(Interaction).filter(Interaction.user_id==user_id).order_by(Interaction.timestamp.desc()).first())

    if interaction:
        return interaction.content_id
    return None