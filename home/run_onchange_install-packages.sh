#!/bin/bash

echo "Ensuring packages are installed..."
sudo apt update
sudo apt install -y \
  neovim \
  tmux
