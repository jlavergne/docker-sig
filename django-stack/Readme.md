## 🐳 Projet Django avec PostgreSQL (Docker)

Ce projet fournit une application Django prête pour le développement avec Docker Compose et une base PostgreSQL. Il inclut la création automatique du projet Django, des migrations, et d’un superuser.

---

### 📦 Services

| Service | Description     | Port local | URL                    |
| ------- | --------------- | ---------- | ---------------------- |
| `web`   | Django (Python) | 8000       | http://localhost:8000  |
| `db`    | PostgreSQL 16   | 5432       | Non exposé directement |

---

### ▶️ Docker-compose

```bash
docker-compose up --build -d

docker-compose down
