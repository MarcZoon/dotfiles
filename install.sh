#!/bin/bash

./setup_symlinks.sh
./install_applications.sh


# set zsh as default shell
if [ ! "$SHELL" == "/usr/bin/zsh" ]; then
    echo "Set zsh as default shell"
    chsh -s /usr/bin/zsh
fi
