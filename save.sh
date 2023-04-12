#!/bin/bash

# Répertoire source à copier
src_dir="/mnt/c/"

# Répertoire de destination pour la copie
dest_dir="/chemin/vers/le/repertoire/destination"

# Copie de la structure des dossiers
find "$src_dir" -type d -exec mkdir -p -- "$dest_dir"/{} \;

# Copie de tous les fichiers
cp -r "$src_dir"/* "$dest_dir"