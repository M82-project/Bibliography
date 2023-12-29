#!/bin/sh

# Chemin du répertoire à partir duquel la recherche commence
SEARCH_DIR="."

# Recherche de tous les fichiers .bib dans le répertoire et ses sous-répertoires
# et les traiter avec Pandoc
for bibfile in $(find . -name "*.bib"); do
    echo "Traitement du fichier: $bibfile"

    pandoc "$bibfile" -s -o "output_file" --to=markdown

    # Vérifier si Pandoc a réussi
    if [ $? -ne 0 ]; then
        echo "Erreur lors du traitement de $bibfile"
        error_occurred=1
        rm output_file
    fi
done

# Quitter avec un code d'erreur si une erreur a été rencontrée
if [ $error_occurred -ne 0 ]; then
    exit 1
fi
rm output_file
# Si tout va bien, quitter avec un code de sortie 0
exit 0
