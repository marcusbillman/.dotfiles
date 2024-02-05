export DOTFILES="$HOME/.dotfiles/ubuntu"

# ---- OH-MY-ZSH ------------------------------------------------------------- #

export ZSH="$HOME/.oh-my-zsh"

ZSH_CUSTOM="$HOME/.dotfiles/ubuntu/zsh/.oh-my-zsh/custom"
ZSH_THEME="powerlevel10k/powerlevel10k"
MAGIC_ENTER_OTHER_COMMAND="ls"
plugins=(git magic-enter)
HIST_STAMPS="yyyy-mm-dd"

source $ZSH/oh-my-zsh.sh

# ---- POWERLEVEL10K --------------------------------------------------------- #

# To customize prompt, run "p10k configure" or edit ~/.p10k.zsh
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# ---- N --------------------------------------------------------------------- #

# n-install (http://git.io/n-install-repo)
export N_PREFIX="$HOME/.n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"

# ---- WSL ------------------------------------------------------------------- #

# Use Windows default browser
export BROWSER="/mnt/c/Windows/explorer.exe"

# ---- ALIASES --------------------------------------------------------------- #

alias update="sudo apt update && sudo apt upgrade -y"
alias c="cd ~/Code/"
alias nano="micro"
alias cat="batcat"
alias ls="exa --tree --level 1 --icons"

# ---- SCRIPTS --------------------------------------------------------------- #

# Fancy greeting message
$DOTFILES/scripts/hello.sh

# Programming joke
$DOTFILES/scripts/joke.sh
