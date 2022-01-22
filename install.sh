#!/bin/bash

# Run Uninstall Script
# Find all .files
# If original file exists, back it up to {file}.dtbak
# Symlink new .file

./uninstall.sh

for file in $(find . -maxdepth 1 -name ".*" -type f  -printf "%f\n" ); do
    if [ -e ~/$file ]; then
        mv -f ~/$file{,.dtbak}
    fi
    ln -s $PWD/$file ~/$file
done


echo "Backed up original files and created symlinks."

