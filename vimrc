" vimrc file
" Author: Yaroslav Ravlinko aka Y4Rv1K
" E-mail: yaroslav.ravlinko@gmail.com

" Required:
call plug#begin(expand('~/.vim/bundle/'))

" My Bundles here:

" Visual effects 
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'NLKNguyen/papercolor-theme'

" NerdTree
Plug 'scrooloose/nerdtree',  { 'on':  'NERDTreeToggle' }

" Syntax validation  
Plug 'scrooloose/syntastic'

" Search 
Plug 'ctrlpvim/ctrlp.vim'

" Tagbar 
Plug 'Tagbar'

" DSL and Programing languages
Plug 'fatih/vim-go'
Plug 'pangloss/vim-javascript'
Plug 'hdima/python-syntax'
Plug 'ekalinin/Dockerfile.vim', {'for' : 'Dockerfile'}
Plug 'elzr/vim-json', {'for' : 'json'}
Plug 'fatih/vim-hclfmt'
Plug 'fatih/vim-nginx' , {'for' : 'nginx'}
Plug 'hashivim/vim-hashicorp-tools'

" Git utilities 
Plug 'gregsexton/gitv' | Plug 'tpope/vim-fugitive'

" Easy aligh
Plug 'junegunn/vim-easy-align'
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" JSON Tool
Plug 'elzr/vim-json'
Plug 'knt45/jq-wrapper.vim'

" AWS
 Plug 'https://github.com/m-kat/aws-vim'

  call plug#end()

" Boolean options
set nocompatible                      " be iMproved
set ruler              	       		    " shows the current line number at the bottom right
set wildmenu      	       		        " great command-line completion, use '<Tab>' to move around and `<CR>` to validate
set number				                    " Enable number field for every file
set rnu					                      " Relative line numbers
set hidden
set paste  
set encoding=utf-8       		          " Set encoding to Unicode
set guifont=Menlo\ Regular:h12 		    " Set GUI font size 
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
colorscheme PaperColor
set background=dark

" vim-airline
set laststatus=2
let g:airline_theme='badwolf'
let g:airline_detect_modified=1
 if !exists('g:airline_symbols')
   let g:airline_symbols = {}
 endif
 let g:airline_symbols.space = "\ua0"
 let g:airline_left_sep = ''
 let g:airline_left_alt_sep = ''
 let g:airline_right_sep = ''
 let g:airline_right_alt_sep = ''
 let g:airline#extensions#tabline#enabled = 1
 let g:airline#extensions#tabline#left_sep = ' '
 let g:airline#extensions#tabline#left_alt_sep = '|'

" open help vertically
command! -nargs=* -complete=help Help vertical belowright help <args>
autocmd FileType help wincmd L

"=====================================================
""===================== MAPPINGS ======================

" This comes first, because we have mappings that depend on leader
" " With a map leader it's possible to do extra key combinations
" " i.e: <leader>w saves the current file
let mapleader = ","

" ==================== F6 for Spell ================
nnoremap <F6> :setlocal spell! spell?<CR>

" ==================== NerdTree ====================
" For toggling
noremap <Leader>n :NERDTreeToggle<cr>
noremap <Leader>f :NERDTreeFind<cr>

let NERDTreeShowHidden=1

" ==================== vim-json ====================
let g:vim_json_syntax_conceal = 0

" ==================== delimitMate ====================
let g:delimitMate_expand_cr = 1   
let g:delimitMate_expand_space = 1    
let g:delimitMate_smart_quotes = 1    
let g:delimitMate_expand_inside_quotes = 0    
let g:delimitMate_smart_matchpairs = '^\%(\w\|\$\)'   

imap <expr> <CR> pumvisible() ? "\<c-y>" : "<Plug>delimitMateCR"

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

" ==================== CtrlP ====================
let g:ctrlp_cmd = 'CtrlPMRU'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_switch_buffer = 'et'  " jump to a file if it's open already
let g:ctrlp_mruf_max=450    " number of recently opened files
let g:ctrlp_max_files=0     " do not limit the number of searchable files
let g:ctrlp_use_caching = 1
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_cache_dir = $HOME.'/.cache/ctrlp'
let g:ctrlp_match_window = 'bottom,order:btt,max:10,results:10'
let g:ctrlp_buftag_types = {'go' : '--language-force=go --golang-types=ftv'}

func! MyCtrlPTag()
  let g:ctrlp_prompt_mappings = {
        \ 'AcceptSelection("e")': ['<cr>', '<2-LeftMouse>'],
        \ 'AcceptSelection("t")': ['<c-t>'],
        \ }
  CtrlPBufTag
endfunc
command! MyCtrlPTag call MyCtrlPTag()


nmap <C-b> :CtrlPCurWD<cr>
imap <C-b> <esc>:CtrlPCurWD<cr>

"================= Tagbar=================
nmap <Leader>t :TagbarToggle<CR>
