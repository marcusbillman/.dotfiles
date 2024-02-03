#!/bin/bash

# Go to home directory
cd

# Install updates
sudo apt update
sudo apt upgrade -y

# Install packages
sudo apt install -y bat cmatrix cowsay exa figlet gh jq make sl toilet zsh

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install n and Node (latest LTS and latest stable)
curl -L https://git.io/n-install | N_PREFIX=~/.n bash -s -- -ny lts
n install latest

# Install micro
curl https://getmic.ro | bash
sudo mv micro /usr/bin

# Create 'Code' directory
mkdir ~/Code

# Run symlink script, forcing overwrites
~/.dotfiles/ubuntu/_symlink.sh -f

# Display important confirmation message
cowsay -f tux Setup complete!
