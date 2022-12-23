#!/bin/bash

# PACKAGES TO INSTALL
packages=( tmux zsh nvim alacritty )

# CREATE SYMLINKS
# symlink oh-my-posh
if [ ! -L /usr/local/bin/oh-my-posh ]; then
    echo "Create oh-my-posh symlink"
    sudo ln -s $PWD/oh-my-posh /usr/local/bin/oh-my-posh
fi

# symlink alacritty config
if [ ! -L ~/.config/alacritty ]; then
    echo "Create alacritty config symlink"
    sudo ln -s $PWD/alacritty ~/.config/alacritty
fi

# symlink poshthemes
if [ ! -L ~/.poshthemes ]; then
    echo "Create .poshthemes symlink"
    ln -s $PWD/.poshthemes/ ~/.poshthemes
fi

# symlink neovim nvim
if [ ! -L ~/.config/nvim ]; then
    echo "Creating nvim symlink"
    ln -s $PWD/nvim ~/.config/nvim
fi

# symlink other dotfiles
for file in $(find . -maxdepth 1 -name ".*" -type f  -printf "%f\n" ); do
    ln -s $PWD/$file ~/$file
done


# INSTALL PACKAGES
for p in "${packages[@]}"
do
    if command -v "$p" > /dev/null; then
        echo Already installed: "$p"
    else
        echo Installing: "$p"
        sudo apt install "$p"
    fi
done


# set zsh as default shell
echo "Set zsh as default shell"
chsh -s /usr/bin/zsh
