#!/bin/bash

# Remove the auto-hiding Dock delay and shorten the animation
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock autohide-time-modifier -float 0.8
killall Dock

# Enable key repeat when holding down a key
defaults write -g ApplePressAndHoldEnabled -bool false

# Create new document when Text Editor is opened
defaults write com.apple.TextEdit NSShowAppCentricOpenPanelInsteadOfUntitledFile -bool false

# Show the ~/Library folder
chflags nohidden ~/Library
