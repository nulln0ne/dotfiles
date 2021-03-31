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
    Plug 'junegunn/goyo.vim'
    Plug 'itchyny/lightline.vim'
call plug#end()
set cursorline
set cursorcolumn
colorscheme solarized
map <C-g> :Goyo<CR>
let g:goyo_width="80%"
let g:goyo_height="80%"
set laststatus=2
let g:lightline = {
    \ 'colorscheme': 'solarized',
    \ 'separator': { 'left': '', 'right': '' },
    \ 'subseparator': { 'left': '', 'right': '' }
    \ }
