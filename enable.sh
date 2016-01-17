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

# Install Neobundle
mkdir -p ~/.vim/bundle && git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim

# Install Plugins
vim +NeoBundleInstall +qall
