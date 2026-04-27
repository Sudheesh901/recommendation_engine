FROM python:3.10.13

WORKDIR /app

ENV PYTHONPATH=/app

ENV PYTHONUNBUFFERED=1

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# 🔹 Create logs directory (extra safety)
RUN mkdir -p logs

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]