#!/bin/bash

# Run Uninstall Script
# Find all .files
# If original file exists, back it up to {file}.dtbak
# Symlink new .file

# ./uninstall.sh
# ./install_packages.sh

# for file in $(find . -maxdepth 1 -name ".*" -type f  -printf "%f\n" ); do
#     if [ -e ~/$file ]; then
#         mv -f ~/$file{,.dtbak}
#     fi
#     ln -s $PWD/$file ~/$file
# done


# echo "Backed up original files and created symlinks."

# symlink oh-my-posh
if [ ! -L /usr/local/bin/oh-my-posh ]; then
    echo "Create oh-my-posh symlink"
    sudo ln -s $PWD/oh-my-posh /usr/local/bin/oh-my-posh
fi

# symlink poshthemes
if [ ! -L ~/.poshthemes ]; then
    echo "Create .poshthemes symlink"
    ln -s $PWD/.poshthemes/ ~/.poshthemes
fi