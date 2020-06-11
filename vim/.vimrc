filetype plugin indent on
"""
""" vim-plug
"""

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
call plug#end()

"""
""" common
"""

set autoindent
set background=dark
set clipboard=unnamed
set encoding=utf-8
set expandtab
set hlsearch
set noswapfile
set number
set shiftwidth=2
set tabstop=2
set iskeyword+=\-
set nowrap
set ignorecase
set smartcase
set list
set wildmenu
set showcmd
set smarttab
set laststatus=2
set incsearch
set ruler
set cursorline
syntax on

"""
""" set per extensions
"""

autocmd Filetype java   setlocal ts=4 sw=4 cc=100
autocmd Filetype php    setlocal ts=4 sw=4
autocmd Filetype python setlocal ts=2 sw=2
autocmd Filetype ruby   setlocal ts=2 sw=2 cc=100
autocmd Filetype xml    setlocal ts=2 sw=2 
autocmd Filetype html   setlocal ts=2 sw=2 cc=100
autocmd Filetype sh     setlocal ts=2 sw=2 cc=100
autocmd Filetype sql    setlocal ts=2 sw=2 
autocmd BufNewFile,BufRead *.less set syntax=css

"""
""" key mapping
"""
map <C-c> <esc>

"""
""" netrw 
"""

let g:netrw_liststyle = 3
let g:netrw_altv = 1
let g:netrw_alto = 1

"""
""" nerdtree
"""

map <C-j> :tabp<CR>
map <C-k> :tabn<CR>
map <C-t> :tabe 
"let NERDTreeWinSize=60

