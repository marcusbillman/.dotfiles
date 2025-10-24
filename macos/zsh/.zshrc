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
alias nano="micro"
alias cat="bat"
alias ls="exa --tree --level 1 --icons --ignore-glob=\"Icon*\""
alias tree="exa --tree --icons --ignore-glob=\"Icon*\""

# ---- SCRIPTS --------------------------------------------------------------- #

# Fancy greeting message
$DOTFILES/scripts/hello.sh

# Programming joke
$DOTFILES/scripts/joke.sh
