# ========== OH-MY-ZSH CONFIGURATION ========== #

export ZSH="/home/marcus/.oh-my-zsh"

ZSH_THEME="lucid"
plugins=(git zsh-autosuggestions)
HYPHEN_INSENSITIVE="true"
DISABLE_UPDATE_PROMPT="true"
HIST_STAMPS="yyyy-mm-dd"

source $ZSH/oh-my-zsh.sh



# ========== USER CONFIGURATION ========== #

# Aliases
alias mysqlrs="sudo service mysql restart"
alias update="sudo apt update && sudo apt upgrade -y"
alias c="cd ~/CodeWSL/"

# Fancy greeting message
~/motd.sh