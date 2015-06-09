#!/usr/bin/env bash

# Setup vim  
if [[ -f '~/.vimrc' ]]; then
  mv ~/.vimrc ~/.vimrc.previous
fi
cp -v vimrc ~/.vim/vimrc
cp -v vimrc.plugins ~/.vim/vimrc.plugins

# Install vim modules
if [[ -d '~/.vim' ]]; then
  mv -f ~/.vim ~/.vim.previous
fi
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/vundle
# Install Plugins
vim +PluginInstall +qall
