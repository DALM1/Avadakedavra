#!/bin/bash
# Dossier de destination
destination_folder="/path/to/destination/folder"
# Boucle sur tous les dossiers
for dir in $(find / -type d); do
  # Copier le dossier dans le dossier de destination
  cp -R "$dir" "$destination_folder"
done
