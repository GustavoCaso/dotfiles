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
export LOG_LEVEL=debug

# go
export GOPATH=$HOME
PATH=$PATH:$GOPATH/bin

# rust
PATH="$HOME/.cargo/bin:$PATH"

#python
eval "$(pyenv init -)"

export PATH

[ -f $HOME/.aliases ] && source $HOME/.aliases

[ -f /opt/dev/dev.sh ] && source /opt/dev/dev.sh

for file in /Users/gustavocaso/src/github.com/Shopify/cloudplatform/workflow-utils/*.bash; do source ${file}; done
kubectl-short-aliases

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# cloudplatform: add Shopify clusters to your local kubernetes config
export KUBECONFIG=${KUBECONFIG:+$KUBECONFIG:}/Users/gustavocaso/.kube/config:/Users/gustavocaso/.kube/config.shopify.cloudplatform
export KUBE_EDITOR='code --wait'
