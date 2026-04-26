from recommender.content_based import get_similar_content
from recommender.collaborative import recommend_for_user
from recommender.utils import get_recent_content, get_popular_content, user_exists
from app.logger import logger

def hybrid_recommend(user_id, top_k=5):

    #Validate User
    if not user_exists(user_id):
        return []
    
    logger.info(f"Generating recommendations for user {user_id}")

    #1. get user recent content
    content_id = get_recent_content(user_id)

    # 3. Collaborative recommendation
    collab_recs = recommend_for_user(user_id, top_k=top_k)

    # 2. Content-based recommendations (if available)

    if content_id:
        logger.info(f"Recent content found: {content_id}")
        content_recs = get_similar_content(content_id, top_k=top_k)
    else:
        logger.warning(f"No recent content for user {user_id}")
        content_recs = []
    #Fallback 
    if not content_recs and not collab_recs:
        return get_popular_content(top_k)

    logger.info(f"Content recs: {content_recs}")
    logger.info(f"Collaborative recs: {collab_recs}")
    
    scores = {}

    #Assign weights
    for i, cid in enumerate(content_recs):
        scores[cid] = scores.get(cid, 0) + (top_k - i) * 0.4

    for i , cid in enumerate(collab_recs):
        scores[cid] = scores.get(cid, 0) + (top_k - i) * 0.6

    #Sort by score
    ranked = sorted(scores.items(), key=lambda x: x[1], reverse=True)

    #Extract content IDs
    result = [cid for cid, _ in ranked[:top_k]]

    logger.info(f"Final recommendations: {result}")
    return result