" https://github.com/tpope/vim-pathogen
call pathogen#runtime_append_all_bundles()

:let mapleader = ","

set cursorline
set expandtab
set number
set splitright
set tabstop=4

" https://github.com/altercation/vim-colors-solarized 
"  * togglebg doesnt load automatically with vim-pathogen bundle
syntax enable
set background=light
let g:solarized_termtrans = 1
colorscheme solarized

if has("gui_running")
    set guifont=monospace\ 9
    set guioptions-=m
    set guioptions-=T
    set guioptions-=r
endif
