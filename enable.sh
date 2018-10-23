#!/usr/bin/env zsh

# Backup vim
if [[ -d '~/.vim' ]]; then
	mv -f ~/.vim ~/.vim.orig
fi

# Setup vim  
mkdir -v ~/.vim
cp -vfr * ~/.vim

# Install vim modules
vim +PlugInstall +UpdateRemotePlugins +qa
