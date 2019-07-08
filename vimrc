let mapleader=" "
syntax on
set number
set relativenumber
set cursorline
set wrap
set showcmd
set wildmenu

set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase

filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set mouse=a
set encoding=utf-8
let &t_ut=''

:set lines=35 columns=120

noremap = nzz
noremap - Nzz
noremap <LEADER><CR> :nohlsearch<CR>

noremap n h
noremap u k
noremap e j
noremap i l

noremap k i
noremap l u

map s <nop>
map S :w<CR>
map Q :q<CR>
map R :source $MYVIMRC<CR>

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'

call plug#end()

color snazzy
let g:SnazzyTransparent = 1

