# Avadakedavra

USE FOR PERSONAL PURPOSE ONLY ATTACK DEFENSE SCRIPT 

This script works similarly to the previous version, but it uses a wildcard () to loop through all files in the current directory, regardless of file type. The if statement checks if the file is a regular file (i.e. not a directory) using the -f flag.

When encrypting files, the script uses the --cipher-algo AES256 flag to specify the encryption algorithm. This is a stronger encryption than the default algorithm used by GPG.

When decrypting files, the script uses the ${file%.gpg} syntax to remove the .gpg extension from the decrypted file name. This ensures that the decrypted file has the original file name and type.

Note that this script assumes that all files in the directory are intended to be encrypted and decrypted. If you want to limit the script to specific file types, you can modify the wildcard to match the desired file extension (e.g. .txt,.pdf, etc.).

chmod +x for.sh

touch input_file

BASH

openssl enc -aes-256-cbc -d -salt -in /home/garuda/Avadakedavra/input_file.enc -out /home/garuda/Avadakedavra/input_file_decrypted -pass pass:my_secret_password

FISH

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



<img align="center" width="900" height="400"  src="https://media2.giphy.com/media/o8GKBm1mRWMYOIQuJd/giphy.gif"/>&emsp;




<!--```ASCII```-->
<!-- include-start -->
(              (       *  "
 )\ )    (      )\ )  (  \`       )
(()/(    )\    (()/(  )\))(   ( /("
 /(_))((((_)(   /(_))((_)()\  )\())
(_))_  )\ _ )\ (_))  (_()((_)((_)\ 
 |   \ (_)_\(_)| |   |  \/  | / (_)
 | |) | / _ \  | |__ | |\/| | | |  
 |___/ /_/ \_\ |____||_|  |_| |_| "
<!-- include-end -->















