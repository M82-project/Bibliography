# Utiliser l'image Pandoc officielle comme base
FROM pandoc/latex:latest-ubuntu

ADD . /data

WORKDIR /data

COPY check.sh /data/web/check.sh

RUN chmod +x /data/web/check.sh
# Définir le script d'entrypoint

ENTRYPOINT ["/data/web/check.sh"]

