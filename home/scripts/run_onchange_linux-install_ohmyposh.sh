#!/bin/bash

curl -s https://ohmyposh.dev/install.sh | bash -s

grep -qxF 'eval "$(oh-my-posh init bash --config ~/.config/oh-my-posh/theme.json)"' ~/.bashrc || echo 'eval "$(oh-my-posh init bash --config ~/.config/oh-my-posh/theme.json)"' >> ~/.bashrc
