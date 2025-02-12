#!/usr/bin/env bash

if [ $# -ne 2 ]; then
    echo "Usage: $0 <directory> <name>"
    exit 1
fi

directory="$1"
name="$2"


if [ ! -d "$directory" ]; then
    echo "Error: Directory '$directory' does not exist."
    exit 1
fi

counter=1

for file in "$directory"/*; do
    if [ -f "$file" ]; then  
        ext="jpg" #change the file extension
        new_name=$(printf "%s-%02d.%s" "$name" "$counter" "$ext")
        mv "$file" "$directory/$new_name"
        ((counter++))
    fi
done

echo "Renaming complete."
