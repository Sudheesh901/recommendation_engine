import pandas as pd
import numpy as np
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.metrics.pairwise import cosine_similarity
from app.database import SessionLocal
from app.models import Content

db = SessionLocal()

def load_content():
    data=db.query(Content).all()

    df = pd.DataFrame([{
        "id":c.id,
        "text":f"{c.category} {c.tags} {c.type}"
    } for c in data])

    return df

def compute_similarity():
    df = load_content()

    vectorizer = TfidfVectorizer()
    tfidf_matrix = vectorizer.fit_transform(df["text"])

    similarity_score = cosine_similarity(tfidf_matrix)

    return df, similarity_score

def get_similar_content(content_id, top_k=5):
    df, sim_matrix = compute_similarity()

    idx = df[df["id"] == content_id].index[0]
    similarity_scores = list(enumerate(sim_matrix[idx]))

    # Sort by similarity
    similarity_scores = sorted(similarity_scores, key = lambda x: x[1], reverse=True)

    # Get top results (excluding itself)
    top_indices = [i[0] for i in similarity_scores[1:top_k+1]]

    return df.iloc[top_indices]["id"].tolist()