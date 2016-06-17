#!/usr/bin/env bash

# Setup vim  
if [[ -f '~/.vimrc' ]]; then
  mv ~/.vimrc ~/.vimrc.previous
fi
cp -v vimrc ~/.vim/vimrc
cp -v vimrc.neovim ~/.vim/vimrc.neovim

# Install vim modules
if [[ -d '~/.vim' ]]; then
  mv -f ~/.vim ~/.vim.previous
fi
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
# Install Plugins
vim +NeoBundleInstall
