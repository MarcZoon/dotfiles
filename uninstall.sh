#!/bin/bash

# Loop through all the dotfiles, if the file is a symlink then remove it
# Then if the backup file exists, restore it to it's original location
for file in $(find . -maxdepth 1 -name ".*" -type f  -printf "%f\n" ); do
    if [ -h ~/$file ]; then
        rm -f ~/$file
    fi
    if [ -e ~/${file}.dtbak ]; then
        mv -f ~/$file{.dtbak,}
    fi
done

# Restore original .vim folder (if it exists)
if [[ -d ~/.vim.bak ]]
then
    rm ~/.vim
    mv ~/.vim.bak ~/.vim
fi

echo "Removed existing symlinks and restored original files."
