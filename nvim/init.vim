filetype plugin indent on

" --------------------------------
" vim-plug
" --------------------------------
call plug#begin('~/.local/share/nvim/plugged')
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'tpope/vim-endwise'
Plug 'mattn/emmet-vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'dense-analysis/ale'
Plug 'tpope/vim-rails'
Plug 'mkitt/tabline.vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'sheerun/vim-polyglot'
Plug 'jpo/vim-railscasts-theme'
Plug 'w0ng/vim-hybrid'
call plug#end()


" --------------------------------
" colorscheme
" --------------------------------
colorscheme hybrid

" --------------------------------
" common
" --------------------------------
set autoindent
set background=dark
set clipboard=unnamed
set encoding=utf-8
set expandtab
set hlsearch
set incsearch
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
set showmatch
set smarttab
set laststatus=2
set ruler
set cursorline
syntax on


" --------------------------------
" set per extensions
" --------------------------------
autocmd Filetype java   setlocal ts=4 sw=4 cc=100
autocmd Filetype php    setlocal ts=4 sw=4
autocmd Filetype python setlocal ts=2 sw=2
autocmd Filetype ruby   setlocal ts=2 sw=2 cc=100
autocmd Filetype xml    setlocal ts=2 sw=2 
autocmd Filetype html   setlocal ts=2 sw=2 cc=100
autocmd Filetype sh     setlocal ts=2 sw=2 cc=100
autocmd Filetype sql    setlocal ts=2 sw=2 
autocmd Filetype markdown     setlocal ts=2 sw=2 sts=2
autocmd BufNewFile,BufRead *.less set syntax=css
autocmd QuickFixCmdPost *grep* cwindow

" --------------------------------
" key mapping
" --------------------------------
let mapleader = "\<Space>"
map <C-c> <esc>
inoremap <silent> jj <ESC>
nnoremap ; :
nnoremap : ;
vnoremap : :
vnoremap : ;
nnoremap <leader>n :NERDTreeToggle<cr>
nnoremap <leader>f :Files<cr>
nnoremap <leader>a :Ag<cr>
nnoremap <leader>t :tabe<CR>:terminal<CR><cr>
nnoremap <C-]> g<C-]>
tnoremap <Esc> <C-\><C-n>
tnoremap jj <C-\><C-n>

" --------------------------------
" netrw 
" --------------------------------
let g:netrw_liststyle = 3
let g:netrw_altv = 1
let g:netrw_alto = 1


" --------------------------------
" nerdtree
" --------------------------------
"map <C-j> :tabp<CR>
"map <C-k> :tabn<CR>
"map <C-t> :tabe 
let NERDTreeWinSize=40


" --------------------------------
" vim-lsp
" --------------------------------
let g:lsp_diagnostics_enabled = 0
let g:lsp_diagnostics_echo_cursor = 1
let g:lsp_highlight_references_enabled = 1

function! s:on_lsp_buffer_enabled() abort
  setlocal omnifunc=lsp#complete
  setlocal signcolumn=yes
  nmap <buffer> gd <plug>(lsp-definition)
  nmap <buffer> <f2> <plug>(lsp-rename)
  inoremap <expr> <cr> pumvisible() ? "\<c-y>\<cr>" : "\<cr>"
endfunction

augroup lsp_install
  au!
  autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END
command! LspDebug let lsp_log_verbose=1 | let lsp_log_file = expand('~/lsp.log')


" --------------------------------
" ale
" --------------------------------
let g:ale_fixers = {
\  'ruby': ['rubocop'],
\  'javascript': ['eslint', 'eslint'],
\  'markdown': [
\    {buffer, lines -> {'command': 'textlint -c ~/.config/textlintrc -o /dev/null --fix --no-color --quiet %t', 'read_temporary_file': 1}}
\   ],
\}
let g:ale_fix_on_save = 1


" --------------------------------
" fzf
" --------------------------------
"  https://github.com/junegunn/fzf.vim/issues/609
command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, {'options': '--delimiter : --nth 4..'}, <bang>0) 


