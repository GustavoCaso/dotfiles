#==============
# Install all the packages
#==============
echo -n "Install all base packages and set up all symlinks (Y/n) => "; read answer
if [[ $answer != "n" ]] && [[ $answer != "N" ]] ; then
  if ! [ -x "$(command -v brew)" ]; then
    echo 'Installing Homebrew'
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  fi

  if ! [ -x "$(command -v asdf)"]; then
    echo 'Installing asdf for version management'
    git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.5.1
  fi
  brew doctor
  brew update

  brew bundle

  echo 'changing shell to zsh'
  sudo chsh -s $(which zsh) $(whoami)

  echo 'Symlinking all dotfiles'
  lsrc -x install.sh -x README.md -x Brewfile

  echo -n 'This will be all the symlink created for you, are you happy with it (Y/n)'; read answer
  if [[ $answer != "n" ]] && [[ $answer != "N" ]] ; then
    rcup -x install.sh -x README.md -x Brewfile
  fi

  echo 'Returning to root'

  cd ~/

  source ~/.zshrc

  echo 'Installing zsh plugins'
  zplug install

  echo 'Finish!!'
fi
