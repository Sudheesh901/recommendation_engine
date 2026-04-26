import pandas as pd
from sklearn.metrics.pairwise import cosine_similarity
from app.database import SessionLocal
from app.models import Interaction

db = SessionLocal()

def load_interactions():
    data=db.query(Interaction).all()

    df = pd.DataFrame([{
        "user_id":i.id,
        "content_id":i.content_id,
        "event":1 #treat all interactions as
    }for i in data])

    return df

def build_user_item_matrix():
    df=load_interactions()

    matrix = df.pivot_table(index="user_id", columns="content_id", values="event", fill_value=0)

    return matrix

def compute_user_similarity(matrix):
    similarity=cosine_similarity(matrix)
    return similarity

def recommend_for_user(user_id, top_k=5):
    matrix = build_user_item_matrix()
    user_ids = list(matrix.index)

    if user_id not in user_ids:
        return []
    
    similarity_matrix = compute_user_similarity(matrix)
    user_index =user_ids.index(user_id)

    similarity_scores = list(enumerate(similarity_matrix[user_index]))

    # Sort users by similarity
    similarity_scores = sorted(similarity_scores, key=lambda x:x[1], reverse=True)

    similar_users = [user_ids[i[0]] for i in similarity_scores[1:top_k+1]]

    # get content liked by similar users

    recommended = set()

    for sim_user in similar_users:
        user_data = matrix.loc[sim_user]
        liked_items = user_data[user_data > 0].index.tolist()
        recommended.update(liked_items)

    return list(recommended)[:top_k]
