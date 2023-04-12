#!/bin/bash

# Définit le répertoire de départ pour la recherche
dir="/c/Users/User"

# Parcourt tous les fichiers dans le répertoire de départ et ses sous-répertoires, et affiche leur contenu
find "$dir" -type f -print0 | while IFS= read -r -d '' file; do
    # Affiche le nom de fichier
    echo "Nom de fichier : $file"
    # Affiche le contenu du fichier
    echo "Contenu de $file :"
    cat "$file"
    echo "====================="
done

echo "Le script est terminé."
