#!/usr/bin/env zsh

# Check if anyenv has alraedy been installed
grep "anyenv init -" $HOME/.zshrc > /dev/null 2>&1

# Install anyenv if it hasn't been installed yet
if [ $? -ne 0 ]; then
	echo '\n# anyenv\neval "$(anyenv init -)"' >> $HOME/.zshrc
	anyenv install --init
fi
