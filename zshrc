export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zsh-users/zsh-autosuggestions"
zplug "denysdovhan/spaceship-zsh-theme", use:spaceship.zsh, from:github, as:theme
zplug load

stty icrnl
# Appends every command to the history file once it is executed
setopt inc_append_history
# # Reloads the history whenever you use it
setopt share_history
HISTFILE=~/.zsh_history
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
[[ -s "$HOME/.kiex/scripts/kiex" ]] && source "$HOME/.kiex/scripts/kiex" # Load Kiex into a shell
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin
source $HOME/.aliases
export PATH="/usr/local/sbin:$PATH"
