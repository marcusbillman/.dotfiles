# ---- HOMEBREW -------------------------------------------------------------- #

eval "$(/opt/homebrew/bin/brew shellenv)"

# ---- ENVIRONMENT VARIABLES ------------------------------------------------- #

export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"

export DOTFILES="$HOME/.dotfiles/macos"

# ---- NVM ------------------------------------------------------------------- #

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# ---- ZOXIDE ---------------------------------------------------------------- #

eval "$(zoxide init zsh)"

# ---- ALIASES --------------------------------------------------------------- #

alias update="brew update && brew upgrade"
alias c="cd ~/Code/"
alias cd="z"
alias nano="micro"
alias cat="bat"
alias ls="eza --tree --level 1 --icons --ignore-glob=\"Icon*\""
alias tree="eza --tree --icons --ignore-glob=\"Icon*\""

# ---- SCRIPTS --------------------------------------------------------------- #

# Fancy greeting message
$DOTFILES/scripts/hello.sh

# Programming joke
$DOTFILES/scripts/joke.sh
