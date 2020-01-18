#! /usr/bin/bash
FILE_LIST=$(find . -type f | grep -v ".git" | grep -v ".idea/")
PROJECT_DIR=$(git rev-parse --show-toplevel)
cd ~
IFS=$'\n'
for file in ${FILE_LIST}; do
    cp -v "$file" "$PROJECT_DIR/$file"
done
