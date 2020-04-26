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
export BUNDLER_EDITOR=code

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

export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:/usr/local/opt/libxml2/lib/pkgconfig

# go
export GOPATH=$HOME
PATH=$PATH:$GOPATH/bin

# rust
PATH="$HOME/.cargo/bin:$PATH"

export PATH

[ -f $HOME/.aliases ] && source $HOME/.aliases

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export KUBE_EDITOR='code --wait'

# Load work related configuration
for file in $HOME/.work/*; do source ${file}; done
