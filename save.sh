#!/bin/bash

src_dir="/mnt/c/"

# desti
dest_dir="/path/to/destination"

# Save folders
find "$src_dir" -type d -exec mkdir -p -- "$dest_dir"/{} \;

# Save all the files
cp -r "$src_dir"/* "$dest_dir"

echo " (              (       *  "
echo " )\ )    (      )\ )  (  \`       )"
echo "(()/(    )\    (()/(  )\))(   ( /("
echo " /(_))((((_)(   /(_))((_)()\  )\())"
echo "(_))_  )\ _ )\ (_))  (_()((_)((_)\ "
echo " |   \ (_)_\(_)| |   |  \/  | / (_)"
echo " | |) | / _ \  | |__ | |\/| | | |  "
echo " |___/ /_/ \_\ |____||_|  |_| |_| "