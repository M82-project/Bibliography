# Utiliser l'image Pandoc officielle comme base
FROM pandoc/latex:latest-ubuntu

ADD . /data

WORKDIR /data

COPY check.sh /data/check.sh

RUN chmod +x /data/check.sh
# Définir le script d'entrypoint

ENTRYPOINT ["/data/check.sh"]

