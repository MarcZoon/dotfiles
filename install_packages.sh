#!/bin/bash

# check git
if [ "$(which git)" == "" ]; then
    echo "Installing git"
    sudo apt install git -y
fi

# check zsh
if [ "$(which zsh)" == "" ]; then
    echo "Installing zsh"
    sudo apt install zsh -y
fi

# check tmux
if [ "$(which tmux)" == "" ]; then
    echo "Installing tmux"
    sudo apt install tmux -y
fi