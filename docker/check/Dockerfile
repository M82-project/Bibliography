# Utiliser l'image Pandoc officielle comme base
FROM pandoc/latex:latest-ubuntu

ADD . /data

WORKDIR /data

# Définir le script d'entrypoint
ENTRYPOINT ["/data/web/generate.sh"]

