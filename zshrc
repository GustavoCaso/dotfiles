export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zsh-users/zsh-autosuggestions"
zplug mafredri/zsh-async, from:github
zplug sindresorhus/pure, use:pure.zsh, from:github, as:theme
zplug load

stty icrnl
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=magenta"

# User configuration
export DISABLE_SPRING=true
HISTFILE=~/.zsh_history
export LC_ALL="en_US.UTF-8"

export DEFAULT_USER=`whoami`

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
source ~/.nvm/nvm.sh

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
[[ -s "$HOME/.kiex/scripts/kiex" ]] && source "$HOME/.kiex/scripts/kiex" # Load Kiex into a shell
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin
source $HOME/.aliases
export PATH="/usr/local/sbin:$PATH"
