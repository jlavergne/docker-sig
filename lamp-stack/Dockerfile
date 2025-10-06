FROM php:8.2-apache

# Installe l'extension mysqli (et pdo_mysql, utile aussi)
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Active les modules Apache utiles (optionnel)
RUN a2enmod rewrite

# Copie les fichiers de ton projet
COPY ./html /var/www/html