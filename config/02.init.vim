" Boolean options
set nocompatible                      " be iMproved
set ruler              	       		    " shows the current line number at the bottom right
set wildmenu      	       		        " great command-line completion, use '<Tab>' to move around and `<CR>` to validate
set number				                    " Enable number field for every file
set rnu					                      " Relative line numbers
set hidden
set paste  
set encoding=utf-8       		          " Set encoding to Unicode
" set guifont=Menlo\ Regular:h12 		    " Set GUI font size 
set tabstop=2 shiftwidth=2 expandtab	" Ser fort tab for ruby
set switchbuf=usetab
set backspace=2				                " Allow backspacing  over everething including indent, eol in insert mode 
set noswapfile
set fileformats=unix,dos,mac        " Prefer Unix over Windows over OS 9 formats
set ignorecase               " Search case insensitive...
set smartcase                " ... but not it begins with upper case 
set completeopt=menu,menuone
set nocursorcolumn           " speed up syntax highlighting
set nocursorline
set updatetime=400
set autowrite

syntax on 				" Enable collor scheme for appropriate type of file 

" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

endif
 
filetype plugin indent on
 
" BUNDLE CONFIGURATION
set background=dark
colorscheme nord
" colorscheme PaperColor
" hi light
" set background
" let g:PaperColor_Theme_Options = {
"   \   'theme': {
"   \     'default': {
"   \       'transparent_background': 1
"   \     }
"   \   }
"   \ }

" Change cursors mode depending on mode 
autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

hi Normal guibg=NONE ctermbg=NONE 
