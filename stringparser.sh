#!/bin/bash


dir="/c/Users/User"

find "$dir" -type f -print0 | while IFS= read -r -d '' file; do
    echo "Nom de fichier : $file"
    echo "====================="
    echo "Contenu de $file :"
    echo "====================="
    cat "$file"
    echo "====================="
done

echo "Le script est terminé."
