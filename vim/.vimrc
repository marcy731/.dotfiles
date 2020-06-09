filetype plugin indent on
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
packloadall

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

"""
""" nerdtree.git
"""

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

"""
""" vim-devicons
"""
let g:WebDevIconsNerdTreeBeforeGlyphPadding = ""
let g:WebDevIconsUnicodeDecorateFolderNodes = v:true
"after a re-source, fix syntax matching issues (concealing brackets):
if exists('g:loaded_webdevicons')
  call webdevicons#refresh()
endif

"""
""" airline
"""
let g:airline_theme = 'molokai'
let g:airline_powerline_fonts = 1
