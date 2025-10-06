FROM python:3.12-slim

WORKDIR /app

# Copier requirements et installer
COPY app/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copier le code (optionnel si tu utilises volumes)
# COPY app/ .

EXPOSE 5000

CMD ["python", "app.py"]