set t_Co=8
syntax on
filetype plugin indent on
set number
set hlsearch
set expandtab
set autoindent
set shiftwidth=4
set smarttab
colorscheme darkspectrum
set viminfo='20,<10000,s10,h 
map <F12> :w<CR>:make<CR>
set wildmenu
set wildmode=list:longest

let &titlestring = expand("%:P")
if &term == "screen"
  set t_ts=^[k
  set t_fs=^[\
endif
set title

