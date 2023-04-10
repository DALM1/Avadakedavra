#!/bin/bash
# Dossier de destination
destination_folder="/home/garuda"
# Boucle sur tous les fichiers chiffrés
find / -type f -name "*.enc" -print0 | while read -d $'\0' file
do
  # Copier le fichier chiffré dans le dossier de destination
  cp "$file" "$destination_folder"
done