export DOTFILES="$HOME/.dotfiles/macos"

# ---- OH-MY-ZSH ------------------------------------------------------------- #

export ZSH="$HOME/.oh-my-zsh"

ZSH_CUSTOM="$HOME/.dotfiles/macos/zsh/.oh-my-zsh/custom"
ZSH_THEME="powerlevel10k/powerlevel10k"
MAGIC_ENTER_OTHER_COMMAND="ls"
plugins=(git magic-enter)
HIST_STAMPS="yyyy-mm-dd"

source $ZSH/oh-my-zsh.sh

# ---- POWERLEVEL10K --------------------------------------------------------- #

# To customize prompt, run "p10k configure" or edit ~/.p10k.zsh
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# ---- NVM ------------------------------------------------------------------- #

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# ---- ALIASES --------------------------------------------------------------- #

alias update="brew update && brew upgrade"
alias c="cd ~/Code/"
alias nano="micro"
alias cat="bat"
alias ls="exa --tree --level 1 --icons --ignore-glob=\"Icon*\""

# ---- SCRIPTS --------------------------------------------------------------- #

# Fancy greeting message
$DOTFILES/scripts/hello.sh

# Programming joke
$DOTFILES/scripts/joke.sh
