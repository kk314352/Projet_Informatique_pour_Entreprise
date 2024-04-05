# Utilisation d'une image Debian
FROM debian:latest

# Installation d'Apache, Pandoc et Make
RUN apt-get update
RUN apt-get install -y apache2 pandoc make


# Définition du répertoire de travail
WORKDIR /root/source

# Copie des fichiers du projet dans le répertoire /root/source
COPY . /root/source

# Exécution des étapes nécessaires pour la construction des fichiers cibles
RUN make -C /root/source all

# Déplacement des fichiers générés HTML vers le répertoire Apache
RUN mv /root/source/*.html /var/www/html/

# Exposition du port 80 pour Apache
EXPOSE 80

# Commande par défaut pour démarrer Apache
CMD ["apachectl", "-D", "FOREGROUND"]

