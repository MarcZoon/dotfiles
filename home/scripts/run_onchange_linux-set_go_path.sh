#!/bin/bash

PATH_TO_ADD="$HOME/go/bin"

# Check if the path is already in the PATH variable
if [[ ":$PATH:" != *":$PATH_TO_ADD:"* ]]; then
    # Add the path to the shell configuration file
    if [[ -f "$HOME/.bashrc" ]]; then
        echo "export PATH=\$PATH:$PATH_TO_ADD" >> "$HOME/.bashrc"
        echo "Added $PATH_TO_ADD to ~/.bashrc"
    elif [[ -f "$HOME/.zshrc" ]]; then
        echo "export PATH=\$PATH:$PATH_TO_ADD" >> "$HOME/.zshrc"
        echo "Added $PATH_TO_ADD to ~/.zshrc"
    else
        echo "No supported shell configuration file found!"
        exit 1
    fi
else
    echo "$PATH_TO_ADD is already in your PATH."
fi
