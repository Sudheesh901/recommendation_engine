## Precision @ k : Out of K recommendation, how many are relevant


def precision_at_k(recommended, relevant, k=5):
    recommended_k = recommended[:k]

    hits = len(set(recommended_k) & set(relevant))

    return hits/k

## Recall@K 

def recall_at_k(recommended, relevant, k=5):
    recommended_k = recommended[:k]

    hits = len(set(recommended_k) & set(relevant))

    return hits/len(relevant)