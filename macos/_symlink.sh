#!/bin/bash

base=~/.dotfiles/macos

#       Target path                          Symlink path
ln -siv "$base/macos/DefaultKeyBinding.dict" ~/Library/KeyBindings/DefaultKeyBinding.dict
ln -siv "$base/macos/.hushlogin"             ~/.hushlogin
ln -siv "$base/git/config"                   ~/.config/git/config
ln -siv "$base/micro/bindings.json"          ~/.config/micro/bindings.json
ln -siv "$base/micro/settings.json"          ~/.config/micro/settings.json
ln -siv "$base/zsh/.zshrc"                   ~/.zshrc
ln -siv "$base/zsh/.zprofile"                ~/.zprofile
