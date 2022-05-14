# Path to your oh-my-zsh installation.
export ZSH="/root/.oh-my-zsh"
export HISTSIZE=1000000
export SAVEHIST=$HISTSIZE

# Set theme
ZSH_THEME="robbyrussell"

# Aliases
alias zshconfig="nano ~/.zshrc"
alias zshsource="source ~/.zshrc"

alias wordpress="/mnt/c/Users/danie/Local\ Sites/"

alias ex="/mnt/c/Windows/explorer.exe ."
alias win="winget.exe"
alias winu="winget.exe upgrade"
alias winua="winget.exe upgrade --all"

# Plugins
plugins=(
    git
    zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
