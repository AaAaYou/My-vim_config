"===========================================
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

set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set mouse=a
set encoding=utf-8
let &t_ut=''
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set list
set listchars=tab:▸\ ,trail:▫
set scrolloff=5
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

:set lines=35 columns=120

"=========keyboard map=======================
noremap = nzz
noremap - Nzz
noremap <LEADER><CR> :nohlsearch<CR>

"New direction key
"noremap n h
"noremap u k
"noremap e j
"noremap i l

"noremap k i
"noremap l u

map s <nop>
map S :w<CR>
map Q :q<CR>
map R :source $MYVIMRC<CR>

"split screen different directory
map sl :set splitright<CR>:vsplit<CR>
map sh :set nosplitright<CR>:vsplit<CR>
map sk :set nosplitbelow<CR>:split<CR>
map sj :set splitbelow<CR>:split<CR>

map <LEADER>l <C-W>l
map <LEADER>k <C-W>k
map <LEADER>h <C-W>h
map <LEADER>j <C-W>j

map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>

map tj :tabe<CR>
map th :-tabnext<CR>
map tl :+tabnext<CR>
" ==========Plug announce======================
call plug#begin('~/.config/nvim/plugged')

" status optimal
Plug 'vim-airline/vim-airline'

" color theme
Plug 'connorholyday/vim-snazzy'

" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() }, 'for':['markdown', 'vim-plug'] }
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
Plug 'vimwiki/vimwiki'

" File navigation
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'

" Bracket auto pairs
Plug 'jiangmiao/auto-pairs'

" Aligned
Plug 'junegunn/vim-easy-align'

" Verilog
Plug 'vhda/verilog_systemverilog.vim'

" Undo Tree
Plug 'mbbill/undotree/'

call plug#end()

" ============Configure region==================
" Snazzy
color snazzy
"let g:SnazzyTransparent = 1

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

" Markdown keyboard map
nmap <C-s> <Plug>MarkdownPreview
nmap <M-s> <Plug>MarkdownPreviewStop
nmap <C-p> <Plug>MarkdownPreviewToggle

" Verilog config
set foldmethod=syntax
":VerilogErrorFormat vcs 2
nnoremap <leader>u :VerilogGotoInstanceStart<CR>

" Undo tree
nnoremap <F5> :UndotreeToggle<cr>
