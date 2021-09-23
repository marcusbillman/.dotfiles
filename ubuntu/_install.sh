#!/bin/bash

# Install updates
sudo apt update
sudo apt upgrade -y

# Install packages
sudo apt install -y cmatrix cowsay figlet ranger sl toilet zsh

# Add the NodeSource repository and install Node 14
curl -sL https://deb.nodesource.com/setup_14.x | sudo bash -
sudo apt install -y nodejs

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Create 'CodeWSL' directory
mkdir ~/CodeWSL

# Run symlink script
~/.dotfiles/ubuntu/_symlink.sh

# Display important confirmation message
cowsay -f tux Setup complete!
