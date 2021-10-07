#!/bin/bash

# Find all .files
# If original file exists, back it up to {file}.dtbak
# Symlink new .file

for file in $(find . -maxdepth 1 -name ".*" -type f  -printf "%f\n" ); do
    if [ -e ~/$file ]; then
        mv -f ~/$file{,.dtbak}
    fi
    ln -s $PWD/$file ~/$file
done

echo "Installed!"

