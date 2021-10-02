#!/bin/bash

# Install updates
sudo apt update
sudo apt upgrade -y

# Install packages
sudo apt install -y cmatrix cowsay figlet make ranger sl toilet zsh

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Use n-install to install n and Node (latest LTS and latest stable)
curl -L https://git.io/n-install | N_PREFIX=~/.n bash -s -- -y lts latest

# Create 'CodeWSL' directory
mkdir ~/CodeWSL

# Run symlink script
~/.dotfiles/ubuntu/_symlink.sh

# Display important confirmation message
cowsay -f tux Setup complete!
