#!/usr/bin/env zsh

# Download dotfiles
git clone git@github.com:okamotoyuki/dotfiles.git /tmp/dotfiles

# Copy dotfiles to the home directory
cp /tmp/dotfiles/.* $HOME/

# Create a vim backup directory
mkdir -p $HOME/.vim/backup
mkdir -p $HOME/.vim/tmp
