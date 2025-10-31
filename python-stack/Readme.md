# 🐳 Application Python (Docker)

Ce projet fournit une application Python avec Flask, entièrement containerisée avec Docker Compose, prête pour le développement local.

---

## 📦 Services

| Service | Description    | Port local | URL                   |
| ------- | -------------- | ---------- | --------------------- |
| `web`   | Python + Flask | 5000       | http://localhost:5000 |

---

## ▶️ Docker-compose

```bash
docker-compose up --build -d

docker-compose down