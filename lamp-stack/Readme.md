# 🐳 Stack LAMP + phpMyAdmin (Docker)

Ce projet contient une stack LAMP (Linux, Apache, MySQL, PHP) avec une interface d'administration via phpMyAdmin.

---

## 📦 Services

| Service        | Description              | Port local | URL                            |
|----------------|--------------------------|------------|--------------------------------|
| `web`          | Apache + PHP             | 8080       | http://localhost:8080          |
| `db`           | MySQL 5.7                | interne    | Non exposé                     |
| `phpmyadmin`   | Interface MySQL Web      | 8081       | http://localhost:8081          |

---

## ▶️ Lancer le projet

```bash
docker-compose up --build
