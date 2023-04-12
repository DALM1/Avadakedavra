#!/bin/bash

dir="/c/Users/User"


count=0


find "$dir" -type f -print0 | while IFS= read -r -d '' file; do
   
    ((count++))
    echo "Nom de fichier : $file"
    echo "\n"
    echo "=========================================="
    echo "\n"
    echo "Contenu de $file :"
    echo "\n"
    echo "=========================================="
    echo "\n"
    cat "$file"
    echo "\n"
    echo "=========================================="


done


if command -v say >/dev/null 2>&1; then
    echo "HACK THE PLANET"
    say "HACK THE PLANET"
else
    echo "'say' is not enable on this system."
fi


echo "Finish with $count files."
echo "HACK THE PLANET"
echo " (              (       *  "
echo " )\ )    (      )\ )  (  \`       )"
echo "(()/(    )\    (()/(  )\))(   ( /("
echo " /(_))((((_)(   /(_))((_)()\  )\())"
echo "(_))_  )\ _ )\ (_))  (_()((_)((_)\ "
echo " |   \ (_)_\(_)| |   |  \/  | / (_)"
echo " | |) | / _ \  | |__ | |\/| | | |  "
echo " |___/ /_/ \_\ |____||_|  |_| |_| "
echo "FINISH."


