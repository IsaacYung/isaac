
""""""""""""""""""""""""" Pathogen """"""""""""""""""""""""""
" Plugin manager

execute pathogen#infect()
syntax on
filetype plugin indent on

filetype indent on

""""""""""""""""""""""""" Configs """"""""""""""""""""" 
set ai
set mouse=a
set incsearch
set confirm
set number
set ignorecase
set smartcase
set wildmenu
set wildmode=list:longest,full

" * Sintax
" - (Syntastic) Sintax flag

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

""""""""""""""""""""""""" UI """"""""""""""""""""""""""
" User Vim Interface 
" - (NERD tree) Filesystem explorer
" - (Vim Sensible)
autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
