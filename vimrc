
"    __          _                _ _ _ 
"   / _|_ __ ___(_) __      _____(_) (_)
"  | |_| '__/ _ \ | \ \ /\ / / _ \ | | |
"  |  _| | |  __/ |  \ V  V /  __/ | | |
"  |_| |_|  \___|_|___\_/\_/ \___|_|_|_|
"                |_____|                

"========set status=========================

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

"=========keyboard map=======================

noremap = nzz
noremap - Nzz
noremap <LEADER><CR> :nohlsearch<CR>

"New direction key
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


" ==========Plug announce======================

call plug#begin('~/.vim/plugged')
" status optimal
Plug 'vim-airline/vim-airline'

" color theme
Plug 'connorholyday/vim-snazzy'

" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }}
", 'for' :['markdown', 'vim-plug'] }
"Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
"Plug 'vimwiki/vimwiki'

call plug#end()

" ============Configure region==================

" Snazzy
color snazzy
let g:SnazzyTransparent = 1

" MarkdownPreview
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 0
let g:mkdp_open_ip = ''
let g:mkdp_browser = 'chromium'
let g:mkdp_echo_preview_url = 0
let g:mkdp_browserfunc = ''
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1
    \ }
let g:mkdp_markdown_css = ''
let g:mkdp_highlight_css = ''
let g:mkdp_port = ''
let g:mkdp_page_title = '「${name}」'

