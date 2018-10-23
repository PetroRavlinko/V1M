" vimrc file
" Author: Yaroslav Ravlinko 
" E-mail: yaroslav.ravlinko@7insyde.com

" Required:
call plug#begin(expand('~/.vim/bundle/'))

" My Bundles here:

" Visual effects 
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tomasr/molokai'
Plug 'chriskempson/base16-vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'neutaaaaan/iosvkem'
Plug 'Siphalor/vim-atomified'
Plug 'Shougo/denite.nvim'

" Syntax validation  
Plug 'scrooloose/syntastic'

" Search 
Plug 'ctrlpvim/ctrlp.vim'

" Tagbar 
Plug 'majutsushi/tagbar'

""""" DSL and Programing languages """"
" General 
Plug 'Shougo/deoplete.nvim'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'roxma/nvim-yarp'

" Language Serveres Protocol
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'

" JS
Plug 'pangloss/vim-javascript'

" Python
Plug 'hdima/python-syntax'
Plug 'ryanolsonx/vim-lsp-python'

" Ruby
Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-cucumber'
Plug 'tpope/vim-haml'
Plug 'skalnik/vim-vroom'

" General 
Plug 'ekalinin/Dockerfile.vim', {'for' : 'Dockerfile'}
Plug 'elzr/vim-json', {'for' : 'json'}
Plug 'fatih/vim-hclfmt'
Plug 'fatih/vim-nginx' , {'for' : 'nginx'}
Plug 'hashivim/vim-hashicorp-tools'
Plug 'vim-scripts/c.vim'
Plug 'mattn/emmet-vim/'
Plug 'MikeCoder/markdown-preview.vim'
Plug 'ingydotnet/yaml-vim'

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
