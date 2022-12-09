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

# if not installed, install tmux, zshell
if command -v zsh > /dev/null; then
    echo "zsh already installed"
else
    echo "installing zsh"
    sudo apt install zsh -y
fi
if command -v tmux > /dev/null; then
    echo "tmux already installed"
else
    echo "installing tmux"
    sudo apt install tmux -y
fi

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

# symlink other dotfiles
for file in $(find . -maxdepth 1 -name ".*" -type f  -printf "%f\n" ); do
    ln -s $PWD/$file ~/$file
done

# set zsh as default shell
echo "Set zsh as default shell"
chsh -s /usr/bin/zsh