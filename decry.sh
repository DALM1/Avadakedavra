chmod +x for.sh
touch input_file
openssl enc -aes-256-cbc -d -salt -in /home/garuda/Avadakedavra/input_file.enc -out /home/garuda/Avadakedavra/input_file_decrypted -pass pass:my_secret_password