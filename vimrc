" enter CMD mode using
nnoremap ; :
let mapleader="'" "using ' as fast cmd leader character
set autoread " reload files when channged on disk
set noerrorbells "don't beep
set nobackup " no backup file

syntax enable "enable syntax processing
set tabstop=4 "number of visual spaces per TAB
set softtabstop=4 "number of spaces in table when editing
set expandtab " tabs are spaces
set shiftwidth=4 "set indent as 4 

set number "show line numbers
"set showcmd "show command in buttom bar
set cursorline "highligth current line

set wildmenu "visual autocomplete for command menu
set lazyredraw "redraw only when we need to
set showmatch "highlight matching [{()}]
set incsearch "seasch as characters are entered
set hlsearch "highlight matches
set ignorecase "ignorecase when searching
set smartcase "no ignorecase when Uppercae char presents
" 0 is to line start, 9 is to line end
nmap 9 $
" ctrl+a to select all
map <C-A> ggVG"

filetype on 
filetype plugin on
filetype indent on
autocmd FileType python set tabstop=4 shiftwidth=4 expandtab ai
autocmd BufNewFile *.sh,*.py exec ":call AutoSetFileHead()"
function! AutoSetFileHead()
    " .sh "
    if &filetype == 'sh'
"        call setline(1, "\#!/bin/bash")
        call setline(1,"\#########################################################################") 
        call append(line("."), "\# File Name: ".expand("%")) 
        call append(line(".")+1, "\# Author: cuixl") 
        call append(line(".")+2, "\# mail: cuixl@centec.com") 
        call append(line(".")+3, "\# Created Time: ".strftime("%c")) 
        call append(line(".")+4, "\#########################################################################") 
        call append(line(".")+5, "\#!/bin/bash") 
        call append(line(".")+6, "") 
    endif
    " python "
    if &filetype == 'python'
        call setline(1,"\#########################################################################") 
        call append(line("."), "\# File Name: ".expand("%")) 
        call append(line(".")+1, "\# Author: cuixl") 
        call append(line(".")+2, "\# mail: cuixl@centec.com") 
        call append(line(".")+3, "\# Created Time: ".strftime("%c")) 
        call append(line(".")+4, "\#########################################################################") 
        call append(line(".")+5, "\#!/usr/bin/python")
        call append(line(".")+6, "\#! encoding: utf-8")
    endif
    normal G
    normal o
    normal o
endfunc

"move screen line, not real line
nnoremap k gk
nnoremap j gj

"move window
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"using U to undo CMD[u]
nnoremap U <C-r>

"using Y to copy cursor to line end
map Y y$

"jump to latest edit or read position
autocmd BufReadPost * normal! g`"

"put search result in middle of screen
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz
set completeopt=preview,menu
"let g:SuperTabRetainCompletionType = 2
"let g:SuperTabDefaultCompletionType = "<C-X><C-O>" 
