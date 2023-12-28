#!/bin/bash

# Chemin du répertoire à partir duquel la recherche commence
SEARCH_DIR="."

# Recherche de tous les fichiers .bib dans le répertoire et ses sous-répertoires
# et les traiter avec Pandoc
find "$SEARCH_DIR" -name "*.bib" | while read -r bibfile; do
    echo "Traitement du fichier: $bibfile"

    # Exemple de commande Pandoc (à ajuster selon vos besoins)
    # Remplacez 'output_file' et 'format' par vos valeurs souhaitées
    pandoc "$bibfile" -s -o "output_file" --to=markdown

    echo "Traitement terminé pour: $bibfile"
done
