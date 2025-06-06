
# Backend
FROM python:3.10-slim as backend

WORKDIR /app

COPY backend ./backend
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

CMD ["uvicorn", "backend.main:app", "--host", "0.0.0.0", "--port", "8000"]
