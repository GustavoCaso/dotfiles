#==============
# Install all the packages
#==============
echo -n "Install all base packages and set up all symlinks (Y/n) => "; read answer
if [[ $answer != "n" ]] && [[ $answer != "N" ]] ; then
    echo 'Installing Homebrew'
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew doctor
    brew update

    echo 'Installing RVM (Ruby Version Manager)'
    sh -c "$(curl -sSL https://get.rvm.io | bash)"
    echo 'Installing n (Node Version Manager)'
    sh -c "$(curl -L https://git.io/n-install | bash -s -- -y)"
    echo 'Installing Kiex (Elixir Version Manager)'
    sh -c "$(curl -sSL https://raw.githubusercontent.com/taylor/kiex/master/install | bash -s)"

    # ===
    # The regular brew installable packages
    # ===
    brew install diff-so-fancy
    brew install git-flow
    brew zsh
    brew install zplug
    brew tap thoughtbot/formulae
    brew install rcm
    brew tap caskroom/cask
    brew tap caskroom/versions
    echo 'Installing Atom.io, DropBox, Google Chrome and Spotify'
    brew cask install atom
    brew cask install dropbox
    brew cask install google-chrome
    brew cask install spotify

    echo 'Symlinking all dotfiles'
    lsrc -x install.sh -S backups -S bundle -S tmp -S blob-store -S compile-cache -S packages -S storage
    echo -n 'This will be all the symlink created for you, are you happy with it (Y/n)'; read answer

    if [[ $answer != "n" ]] && [[ $answer != "N" ]] ; then
      rcup -x install.sh -S backups -S bundle -S tmp -S blob-store -S compile-cache -S packages -S storage
    fi

    echo 'Finish Happy Hacking ;)'
fi
