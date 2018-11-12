#!/usr/bin/env zsh

# Backup vim
if [[ -d '~/.vim' ]]; then
	mv -f ~/.vim ~/.vim.orig
fi

# Setup vim  
mkdir -v ~/.vim
cp -vfr * ~/.vim

# install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install vim modules
vim +PlugInstall +UpdateRemotePlugins +qa
