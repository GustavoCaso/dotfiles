#==============
# Install all the packages
#==============
echo -n "Install all base packages and set up all symlinks (Y/n) => "; read answer
if [[ $answer != "n" ]] && [[ $answer != "N" ]] ; then
    echo 'Installing Homebrew'
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
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

    echo 'Return to root'

    cd ~/

    source ~/.zshrc

    zplug install

    echo 'Finish!!'
fi
