import random
from sqlalchemy.orm import Session
from app.database import SessionLocal
from app.models import User, Content, Interaction

db: Session = SessionLocal()

# --- Sample data -----
categories = ["Polity", "Economy", "History", "Geography", "Environment"]
levels = ["Beginner", "Intermediate", "Advanced"]
goals = ["UPSC Prelims", "UPSC Mains"]


event_types = ["click", "like", "read", "enroll"]

# --- 1. Create Content ---

def create_content(n=500):
    contents = []

    for i in range(n):
        content = Content(
            title = f"Content {i}",
            type = random.choice(["article","course"]),
            category=random.choice(categories),
            difficulty = random.choice(levels),
            tags = random.choice(categories)
        )

        contents.append(content)
    db.bulk_save_objects(contents)
    db.commit()
    print(f"{n} contents created successfully")

# --- Create Users -----
def create_users(n=100):
    users = []

    for i in range(n):
        user = User(
            goal=random.choice(goals),
            level=random.choice(levels)
        )
        users.append(user)
    
    db.bulk_save_objects(users)
    db.commit()
    print(f"{n} users inserted successfully")

# --- 3. Create Interactions ---
def create_interactions(n=2000):
    users = db.query(User).all()
    contents =db.query(Content).all()
    interactions = []

    for i in range(n):
        interaction = Interaction(
            user_id= random.choice(users).id,
            content_id = random.choice(contents).id,
            event_type=random.choice(event_types)
        )
        interactions.append(interaction)
    
    db.bulk_save_objects(interactions)
    db.commit()
    print(f"{n} interactions created successfully")

if __name__ == "__main__":
    create_content(500)
    create_users(100)
    create_interactions(2000)