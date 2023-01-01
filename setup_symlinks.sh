#!/bin/bash

# nvim
if [ ! -L ~/.config/nvim ]; then
    echo "Create nvim symlink"
    sudo ln -s $PWD/nvim ~/.config/nvim
fi

# oh-my-posh
if [ ! -L /usr/local/bin/oh-my-posh ]; then
    echo "Create oh-my-posh symlink"
    sudo ln -s $PWD/oh-my-posh /usr/local/bin/oh-my-posh
fi

# poshthemes
if [ ! -L ~/.poshthemes ]; then
    echo "Create .poshthemes symlink"
    ln -s $PWD/.poshthemes/ ~/.poshthemes
fi

# i3
if [ ! -L ~/.config/i3 ]; then
    echo "Create i3 symlink"
    ln -s $PWD/i3 ~/.config/i3
fi

# rofi
if [ ! -L ~/.config/rofi ]; then
    echo "Create rofi symlink"
    ln -s $PWD/rofi ~/.config/rofi
fi

# dotfiles in root
for file in $(find . -maxdepth 1 -name ".*" -type f  -printf "%f\n" ); do
    if [ ! -L ~/$file ] && [ ! $file != ".gitignore" ]; then
        ln -s $PWD/$file ~/$file
    fi
done

