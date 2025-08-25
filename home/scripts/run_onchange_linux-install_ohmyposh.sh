#!/bin/bash

curl -s https://ohmyposh.dev/install.sh | bash -s

grep -qxF 'eval "$(oh-my-posh init bash)"' ~/.bashrc || echo 'eval "$(oh-my-posh init bash)"' >> ~/.bashrc
