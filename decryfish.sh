chmod +x for.sh
touch input_file
for file in /home/garuda/Avadakedavra/*.enc
    openssl enc -aes-256-cbc -d -salt -in "$file" -out "$(basename "$file" .enc)" -pass pass:my_secret_password
end; echo " (              (       *  "
echo " )\ )    (      )\ )  (  \`       )"
echo "(()/(    )\    (()/(  )\))(   ( /("
echo " /(_))((((_)(   /(_))((_)()\  )\())"
echo "(_))_  )\ _ )\ (_))  (_()((_)((_)\ "
echo " |   \ (_)_\(_)| |   |  \/  | / (_)"
echo " | |) | / _ \  | |__ | |\/| | | |  "
echo " |___/ /_/ \_\ |____||_|  |_| |_| "