#!/usr/bin/env zsh

# Check if prezto has alraedy been installed
ls "${ZDOTDIR:-$HOME}/.zprezto" > /dev/null 2>&1

# Install prezto if it hasn't been installed yet
if [ $? -ne 0 ]; then
  git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

  setopt EXTENDED_GLOB
  for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
    ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
  done
fi

# Check if git module has alraedy been installed
grep "'git'" $HOME/.zprezto/runcoms/zpreztorc > /dev/null 2>&1

# Add git module if it hasn't been installed yet
if [ $? -ne 0 ]; then
  sed -i '' -e "/'completion'/p; s/completion/git/" $HOME/.zprezto/runcoms/zpreztorc
fi
