source ~/.antigen/antigen.zsh
antigen use oh-my-zsh
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen theme agnoster
antigen apply

stty icrnl

export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=magenta"

# User configuration
export DISABLE_SPRING=true

export LC_ALL="en_US.UTF-8"

export DEFAULT_USER=`whoami`

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
source ~/.nvm/nvm.sh

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin
