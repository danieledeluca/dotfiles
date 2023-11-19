# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export HISTSIZE=1000000
export SAVEHIST=$HISTSIZE

# Set theme
ZSH_THEME="robbyrussell"

# Aliases
alias zshconfig="nano ~/.zshrc"
alias zshsource="source ~/.zshrc"
alias zshhistory="recover_zsh_history_file"

alias ex="/mnt/c/Windows/explorer.exe ."
alias winget="winget.exe"

# Plugins
plugins=(
    git
    zsh-autosuggestions
)

# Funcions
keep_current_path() {
  printf "\e]9;9;%s\e\\" "$(wslpath -w "$PWD")"
}

recover_zsh_history_file() {
  mv ~/.zsh_history ~/.zsh_history_bad
  strings ~/.zsh_history_bad > ~/.zsh_history
  fc -R ~/.zsh_history;
  rm ~/.zsh_history_bad
}

precmd_functions+=(keep_current_path)

source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
