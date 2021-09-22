#!/bin/bash

# Install updates
sudo apt update
sudo apt upgrade -y

# Install packages
sudo apt install -y sl cmatrix cowsay figlet toilet ranger

# Add the NodeSource repository and install Node 14
curl -sL https://deb.nodesource.com/setup_14.x | sudo bash -
sudo apt install -y nodejs

# Run symlink script
~/.dotfiles/ubuntu/_symlink.sh

# Display important confirmation message
cowsay -f tux Setup complete!
