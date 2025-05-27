# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

plugins=(
    git
    zsh-syntax-highlighting
    zsh-autosuggestions
    virtualenvwrapper
)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH=/opt/homebrew/lib/ruby/gems/3.4.0/bin:$PATH
export PATH=/opt/homebrew/Cellar/ruby/3.4.2/bin:$PATH
export PATH=$HOME/bin:$PATH
export VIRTUAL_ENV_DISABLE_PROMPT=1

# Flutter
export PATH=$HOME/development/flutter/bin:$PATH

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
else
    export EDITOR='nvim'
fi

# aliases
alias zshconfig="code ~/.zshrc"
alias ohmyzsh="code ~/.oh-my-zsh"
alias cl="clear"
alias intel="arch -x86_64 /bin/zsh"
alias k="kubectl"
alias tera="terraform"

eval "$(starship init zsh)"