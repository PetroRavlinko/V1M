#!/bin/bash

# Update vim and vundle
cd ~/.vim/bundle/Vundle && git pull
vim +PluginUpdate +qall
