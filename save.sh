#!/bin/bash

src_dir="/mnt/c/"

# desti
dest_dir="/chemin/vers/le/repertoire/destination"

# Save folders
find "$src_dir" -type d -exec mkdir -p -- "$dest_dir"/{} \;

# Save all the files
cp -r "$src_dir"/* "$dest_dir"