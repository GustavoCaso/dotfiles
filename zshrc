# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

ZSH_THEME="agnoster"

plugins=(git zsh-syntax-highlighting)

# User configuration

source $ZSH/oh-my-zsh.sh

export DISABLE_SPRING=true

export LC_ALL="en_US.UTF-8"

export DEFAULT_USER=`whoami`

export NVM_DIR="/Users/gus/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
