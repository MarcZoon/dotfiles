#!/bin/bash

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

# build neovim from source if not installed
if command -v nvim > /dev/null; then
    echo "neovim already installed"
else
    sudo apt-get install ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip curl doxygen
    mkdir repos
    cd repos
    if [ ! -d neovim ]; then
        git clone https://github.com/neovim/neovim
    fi
    cd neovim
    make CMAKE_BUILD_TYPE=RelWithDebInfo
    sudo make install
    cd ../..
fi

# symlink nvim
if [ ! -L ~/.config/nvim ]; then
    echo "Create nvim symlink"
    sudo ln -s $PWD/nvim ~/.config/nvim
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
    if [ ! -L ~/$file ] && [ ! $file != ".gitignore" ]; then
        ln -s $PWD/$file ~/$file
    fi
done

# set zsh as default shell
echo "Set zsh as default shell"
chsh -s /usr/bin/zsh
