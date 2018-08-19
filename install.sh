#==============
# Install all the packages
#==============
echo -n "Install all base packages and set up all symlinks (Y/n) => "; read answer
if [[ $answer != "n" ]] && [[ $answer != "N" ]] ; then
    echo 'Installing Homebrew'
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew doctor
    brew update

    # ===
    # The common packages
    # ===
    brew install diff-so-fancy
    brew install zsh
    brew install zplug
    brew install redis
    brew tap thoughtbot/formulae
    brew install rcm
    brew tap caskroom/cask
    brew tap caskroom/versions

    echo 'changing shell to zsh'
    sudo chsh -s $(which zsh) $(whoami)

    echo 'Symlinking all dotfiles'
    lsrc -x install.sh -x README.md

    echo -n 'This will be all the symlink created for you, are you happy with it (Y/n)'; read answer
    if [[ $answer != "n" ]] && [[ $answer != "N" ]] ; then
      rcup -x install.sh -x README.md
    fi

    echo 'Return to root'

    cd ~/

    source ~/.zshrc

    zplug install

    echo 'Finish!!'
fi
