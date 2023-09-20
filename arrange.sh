#!/bin/bash


parent_folder="C:\Users\jackl\ossp\SWE_2021_41_2023_2_week_4-main"


for file in "$parent_folder/files"/*; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        lowercase_filename=$(echo "$filename" | tr '[:upper:]' '[:lower:]')
        
        first_letter="${filename:0:1}"

        mv "$file" "$target_folder/$first_letter/"
    fi
done