#!/bin/bash
# desti
destination_folder="/home/garuda"

find / -type f -name "*.enc" -print0 | while read -d $'\0' file
do
 
  cp "$file" "$destination_folder"
done


