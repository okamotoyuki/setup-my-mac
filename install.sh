#! /usr/bin/env zsh

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Install Homebrew bundles
brew bundle

# Install others
./plugins/install_anyenv.zsh
./plugins/install_dotfiles.zsh
./plugins/install_prezto.zsh
