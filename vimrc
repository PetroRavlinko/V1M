" vimrc file
" Author: Yaroslav Ravlinko aka Y4Rv1K
" E-mail: yaroslav.ravlinko@gmail.com

" OPTIONS

" Boolean options
set nocompatible                      " be iMproved
set ruler              	       		    " shows the current line number at the bottom right
set wildmenu      	       		        " great command-line completion, use '<Tab>' to move around and `<CR>` to validate
set number				                    " Enable number field for every file
set rnu					                      " Relative line numbers
" set spell				                    " enable spellchecker 
set hidden
set paste  

" String optoins
set encoding=utf-8       		          " Set encoding to Unicode
set guifont=Menlo\ Regular:h12 		    " Set GUI font size 
set tabstop=2 shiftwidth=2 expandtab	" Ser fort tab for ruby
set switchbuf=usetab

" Number optoins
set backspace=2				                " Allow backspacing  over everething including indent, eol in insert mode 

" MAPPINGS

" Window navigation
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-L> <C-W>l
map <C-H> <C-W>h

" Normal mode mapping
" Switch buffer
nnoremap <TAB> :bn<CR>
nnoremap <S-TAB> :bp<CR>

" Switch tabs
nnoremap <S-Left> :tabprevious<CR>
nnoremap <S-Right> :tabnext<CR>

" Insert mode mapping

" Visual mode mapping

" COMMAND
colorscheme koehler
syntax on 				" Enable collor scheme for appropriate type of file 

" Add external configuration files
" source ~/.vim/vimrc.plugins
source ~/.vim/vimrc.neovim
