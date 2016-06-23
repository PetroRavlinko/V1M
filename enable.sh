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
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim +PlugInstall
