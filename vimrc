" enter CMD mode using ;
nnoremap ; :
let mapleader="'" "using ' as fast cmd leader character
set autoread " reload files when channged on disk
set noerrorbells "don't beep
set nobackup " no backup file

syntax enable "enable syntax processing
set tabstop=4 "number of visual spaces per TAB
set softtabstop=4 "number of spaces in table when editing
set expandtab " tabs are spaces
set number "show line numbers
"set showcmd "show command in buttom bar
set cursorline "highligth current line
filetype indent on "load filetype-specific indent files
set wildmenu "visual autocomplete for command menu
set lazyredraw "redraw only when we need to
set showmatch "highlight matching [{()}]
set incsearch "seasch as characters are entered
set hlsearch "highlight matches
