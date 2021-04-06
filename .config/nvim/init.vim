syntax on
filetype off
filetype plugin indent on
set guicursor=
set noswapfile
set inccommand=nosplit
set nobackup
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set softtabstop=4
set autoindent
set hlsearch
set incsearch
set showtabline=1
set wrap
set noruler
set linebreak
set clipboard+=unnamedplus
set relativenumber number
set encoding=utf-8
set noshowmode
map <C-n> :tabnew<CR>
map q <Nop>
map Q <Nop>
set nocompatible
set pastetoggle=<F2>
call plug#begin()
    Plug 'itchyny/lightline.vim'
call plug#end()
set cursorline
set cursorcolumn
colorscheme solarized
set laststatus=2
let g:lightline = {
    \ 'colorscheme': 'solarized',
    \ }
