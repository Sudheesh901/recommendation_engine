from fastapi import APIRouter, HTTPException
from recommender.content_based import get_similar_content
from recommender.collaborative import recommend_for_user
from recommender.hybrid import hybrid_recommend
from recommender.utils import user_exists



router = APIRouter()

@router.get("/content/{content_id}")
def recommend_content(content_id:int):
    recommendations=get_similar_content(content_id)
    return {"recommended_content": recommendations}

@router.get("/user/{user_id}")
def recommend_user(user_id:int):
    recommendations=recommend_for_user(user_id)
    return {"recommended_content": recommendations}

@router.get("/hybrid/{user_id}")
def recommend_hybrid(user_id:int):
    if not user_exists(user_id):
        raise HTTPException(status_code=404, detail="User not found")
    try:
        recommendations=hybrid_recommend(user_id)

        if not recommendations:
            raise HTTPException(status_code=404, detail="No recommendations found")
        
        return {"recommended_content": recommendations}
    
    except Exception as e:
        raise HTTPException(status_code=500, detail=str(e))


