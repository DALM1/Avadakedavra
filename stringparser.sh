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


echo "the script have $count files."

echo "HACK THE PLANET"
