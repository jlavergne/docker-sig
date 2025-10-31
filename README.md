## 🐳 Docker — Description technique



**Docker** est une plateforme de virtualisation légère basée sur la **containerisation**.  

Elle permet d’exécuter des applications dans des **conteneurs* isolés, portables et reproductibles.



### ⚙️ Principes clés

- **Conteneur** : unité d’exécution isolée via les **namespaces** et **cgroups** du noyau Linux.  

- **Image** : modèle immuable construit à partir d’un **Dockerfile**.  

- **Docker Engine** : moteur client-serveur (CLI, API, démon `dockerd`).  

- **Registry** : stockage et distribution d’images (ex. *Docker Hub*).

- **Volume** : espace de stockage persistant pour les données, indépendant du cycle de vie des conteneurs.

&nbsp; Types de volumes :

&nbsp; - **Volumes Docker** : gérés par Docker, faciles à partager entre conteneurs.  

&nbsp; - **Bind mounts** : utilisent un dossier du système hôte, pratique pour le développement.



### 🧩 Avantages

- Lancement rapide, faible empreinte système.  

- Déploiement cohérent sur tous les environnements.  

- Intégration avec un orchestrateur (**Kubernetes**).

- Isolation réseau et sécurité.



---



## 🔹 Commandes essentielles



### Images



# Lister les images

```docker images```



# Télécharger une image

```docker pull <nom_image>```



# Construire une image depuis un Dockerfile

```docker build -t <nom_image> .```



# Supprimer une image

```docker rmi <nom_image>```



### Conteneurs



# Lancer un conteneur

```docker run -d --name <nom_conteneur> <nom_image>```



# Lister les conteneurs actifs

```docker ps```



# Lister tous les conteneurs

```docker ps -a```



# Arrêter un conteneur

```docker stop <nom_conteneur>```



# Supprimer un conteneur

```docker rm <nom_conteneur>```



# Voir les logs d’un conteneur

```docker logs <nom_conteneur>```



### Volumes



# Créer un volume

```docker volume create <nom_volume>```



# Lister les volumes

```docker volume ls```



# Supprimer un volume

```docker volume rm <nom_volume>```



# Monter un volume lors du lancement d’un conteneur

```docker run -v <nom_volume>:/chemin/dans/conteneur <nom_image>```



### Réseau



# Lister les réseaux

```docker network ls```



# Créer un réseau

```docker network create <nom_reseau>```



# Connecter un conteneur à un réseau

```docker network connect <nom_reseau> <nom_conteneur>```



### Autres



# Lancer un conteneur avec un terminal interactif

```docker run -it <nom_image> /bin/bash```



# Supprimer tous les conteneurs arrêtés

```docker container prune```



# Supprimer toutes les images inutilisées

```docker image prune -a```



# Nettoyage complet (supprime aussi les volumes et toutes les images inutilisées)

```docker system prune -a --volumes -f```

