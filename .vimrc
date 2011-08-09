" https://github.com/tpope/vim-pathogen
call pathogen#runtime_append_all_bundles()

" https://github.com/altercation/vim-colors-solarized 
"  * togglebg doesnt load automatically with vim-pathogen bundle
syntax enable
set background=light
let g:solarized_termtrans = 1
colorscheme solarized
