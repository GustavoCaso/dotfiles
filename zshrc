export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zsh-users/zsh-autosuggestions"
zplug "denysdovhan/spaceship-zsh-theme", use:spaceship.zsh, from:github, as:theme
zplug load

stty icrnl
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=magenta"

# History
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=5000
setopt appendhistory
setopt sharehistory
setopt incappendhistory

# User configuration
export DISABLE_SPRING=true
export LC_ALL="en_US.UTF-8"

export DEFAULT_USER=`whoami`
export GPG_TTY=$(tty)

# completion
autoload -Uz compinit
compinit

# ensure dotfiles bin directory is loaded first
PATH="$HOME/.bin:/usr/local/sbin:$PATH"

# load ASDF for version management
[ -d "$HOME/.asdf" ] && . $HOME/.asdf/asdf.sh

# add postgres app the path
PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin

# go
export GOPATH=$HOME/dev/personal/go
export GOROOT=/usr/local/opt/go/libexec
PATH=$PATH:$GOPATH/bin

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/gustavocaso/Downloads/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/gustavocaso/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/gustavocaso/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/gustavocaso/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

export PATH

[ -f $HOME/.aliases ] && source $HOME/.aliases
