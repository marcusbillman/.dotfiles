#!/bin/bash

base=~/.dotfiles/macos

#       Target path                          Symlink path
ln -siv "$base/macos/DefaultKeyBinding.dict" ~/Library/KeyBindings/DefaultKeyBinding.dict
ln -siv "$base/.gitconfig"                   ~/.gitconfig
ln -siv "$base/.config/micro/bindings.json"  ~/.config/micro/bindings.json
ln -siv "$base/.config/micro/settings.json"  ~/.config/micro/settings.json

touch ~/.hushlogin