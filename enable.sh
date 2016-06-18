#!/usr/bin/env bash

# Backup vim
if [[ -d '~/.vim' ]]; then
  mv -f ~/.vim ~/.vim.previous
fi
if [[ -f '~/.vimrc' ]]; then
  mv ~/.vimrc ~/.vimrc.previous
fi

# Setup vim  
mkdir -v ~/.vim
cp -v vimrc ~/.vim/vimrc
cp -v vimrc.neovim ~/.vim/vimrc.neovim

# Install vim modules
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
# Install Plugins
vim +NeoBundleInstall
