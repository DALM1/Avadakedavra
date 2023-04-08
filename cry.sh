v#!/bin/bash
# Dossier à chiffrer
folder="/path/to/folder"
# Clé de chiffrement
key="my_secret_password_password"
# Chiffrer tous les fichiers dans le dossier
find $folder -type f -exec openssl enc -aes-256-cbc -salt -in {} -out {}.enc -k $key \;
# Supprimer les fichiers originaux
find $folder -type f -not -name "*.enc" -delete