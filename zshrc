export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zsh-users/zsh-autosuggestions"
zplug "denysdovhan/spaceship-zsh-theme", use:spaceship.zsh, from:github, as:theme
zplug load

stty icrnl

# ZSH_AUTOCOMPLETION
autoload -Uz compinit
compinit
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=magenta"

# History
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=5000
setopt appendhistory
setopt sharehistory
setopt incappendhistory

# User configuration
DISABLE_SPRING=true
LC_ALL="en_US.UTF-8"

BUNDLER_EDITOR=code
KUBE_EDITOR='code --wait'

DEFAULT_USER=`whoami`
GPG_TTY=$(tty)
WORK_COMPUTER=false


# SPACESHIP THEME CONFIGURATION
SPACESHIP_PROMPT_ORDER=(
  #time        # Time stamps section
  user          # Username section
  dir           # Current directory section
  #host          # Hostname section
  git           # Git section (git_branch + git_status)
  #hg            # Mercurial section (hg_branch  + hg_status)
  package     # Package version
  node          # Node.js section
  ruby          # Ruby section
  elixir        # Elixir section
  #xcode       # Xcode section
  #swift         # Swift section
  golang        # Go section
  #php           # PHP section
  rust          # Rust section
  #haskell       # Haskell Stack section
  #julia       # Julia section
  #docker      # Docker section
  #aws           # Amazon Web Services section
  gcloud        # Google Cloud Platform section
  #venv          # virtualenv section
  #conda         # conda virtualenv section
  #pyenv         # Pyenv section
  #dotnet        # .NET section
  #ember       # Ember.js section
  kubectl   # Kubectl context section
  #terraform     # Terraform workspace section
  exec_time     # Execution time
  line_sep      # Line break
  #battery       # Battery level and status
  #vi_mode     # Vi-mode indicator
  #jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)
SPACESHIP_USER_SHOW=always

# ensure dotfiles bin directory is loaded first
PATH="$HOME/.bin:/usr/local/sbin:$PATH"

# load ASDF for version management
[ -d "$HOME/.asdf" ] && . $HOME/.asdf/asdf.sh

# add postgres app the path
PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin

export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:/usr/local/opt/libxml2/lib/pkgconfig

# go
GOPATH=$HOME
PATH=$PATH:$GOPATH/bin

export PATH

[ -f $HOME/.aliases ] && source $HOME/.aliases

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Load work related configuration
[ "$WORK_COMPUTER" = true ] && for file in $HOME/.work/*; do source ${file}; done
