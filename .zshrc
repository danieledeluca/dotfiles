# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load
ZSH_THEME="powerlevel10k/powerlevel10k"

# History
HISTSIZE=1000000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HITSDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Plugins
plugins=(
    fzf
    fzf-tab
    git
    sudo
    zoxide
    zsh-autosuggestions
    zsh-completions
    zsh-interactive-cd
    zsh-syntax-highlighting
)

# Load completions
autoload -U compinit && compinit

# Completion styling
zstyle ':completion:*:git-checkout:*' sort false
zstyle ':completion:*:descriptions' format '[%d]'
zstyle ':completion:*' menu no

# Aliases
alias zshconfig="nano ~/.zshrc"
alias zshsource="source ~/.zshrc"
alias zshhistory="recover_zsh_history_file"

alias ex="/mnt/c/Windows/explorer.exe ."
alias winget="winget.exe"

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

# Prevent path from being written to history
precmd_functions+=(keep_current_path)

# Source/Load Oh My Zsh
source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Path to your nvm installation.
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # Load nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # Load nvm bash_completion

# Shell integrations
eval "$(zoxide init --cmd cd zsh)"
