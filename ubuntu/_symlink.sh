#!/bin/bash

base=~/.dotfiles/ubuntu

#       Target path                 Symlink path
ln -siv "$base/git/.gitconfig"      ~/.gitconfig
ln -siv "$base/micro/bindings.json" ~/.config/micro/bindings.json
ln -siv "$base/micro/settings.json" ~/.config/micro/settings.json
ln -siv "$base/zsh/.p10k.zsh"       ~/.p10k.zsh
ln -siv "$base/zsh/.zshrc"          ~/.zshrc

touch ~/.hushlogin
