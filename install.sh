#! /usr/bin/env zsh

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Copy Browfile to home directory
cp ./Brewfile $HOME/

# Install Homebrew bundles
brew bundle

# Install others
./plugins/install_prezto.zsh
./plugins/install_dotfiles.zsh
