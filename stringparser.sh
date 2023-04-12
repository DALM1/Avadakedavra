#!/bin/bash

dir="/c/Users/User"


count=0


find "$dir" -type f -print0 | while IFS= read -r -d '' file; do
   
    ((count++))
    echo "Nom de fichier : $file"
    echo "====================="
    echo "Contenu de $file :"
    echo "====================="
    cat "$file"
    echo "====================="
done


if command -v say >/dev/null 2>&1; then
    echo "HACK THE PLANET"
    say "HACK THE PLANET"
else
    echo "La commande 'say' n'est pas disponible sur ce système."
fi


echo "Finish with $count files."

echo "FINISH."


