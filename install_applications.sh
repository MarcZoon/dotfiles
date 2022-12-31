# zshell
if ! command -v zsh > /dev/null; then
    echo "Installing: zsh"
    sudo apt install zsh -y
fi

# tmux
if ! command -v tmux > /dev/null; then
    echo "Installing: tmux"
    sudo apt install tmux -y
fi

# tmux plugin manager
if [ ! -d ~/.tmux/plugins/tpm ]; then
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

# neovim
if ! command -v nvim > /dev/null; then
    echo "Installing: neovim"
    sudo apt-get install ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip curl doxygen
    mkdir repos
    cd repos
    if [ ! -d neovim ]; then
        git clone https://github.com/neovim/neovim
        cd neovim
    else
        cd neovim
        git pull
    fi
    make CMAKE_BUILD_TYPE=RelWithDebInfo
    sudo make install
    cd ../..
fi


