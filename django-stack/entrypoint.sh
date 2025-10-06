#!/bin/bash
set -e

PROJECT_NAME="mon_projet"
APP_DIR="/app"

# Si le projet n'existe pas encore, on le crée
if [ ! -f "$APP_DIR/manage.py" ]; then
  echo "
🛠️
 Création du projet Django..."
  django-admin startproject $PROJECT_NAME $APP_DIR
fi

cd $APP_DIR

echo "
🔁
 Attente de la base de données..."
until pg_isready -h db -p 5432 -U postgres; do
  sleep 1
done
echo "
✅
 Base de données disponible."

echo "
📦
 Migration de la base de données..."
python manage.py migrate --noinput

echo "
👤
 Création du superuser (si inexistant)..."
python manage.py shell <<EOF
from django.contrib.auth.models import User;
import os;
u = os.environ.get("DJANGO_SUPERUSER_USERNAME");
p = os.environ.get("DJANGO_SUPERUSER_PASSWORD");
e = os.environ.get("DJANGO_SUPERUSER_EMAIL");
if not User.objects.filter(username=u).exists():
    User.objects.create_superuser(u, e, p)
EOF

echo "
🚀
 Lancement du serveur Django..."
python manage.py runserver 0.0.0.0:8000