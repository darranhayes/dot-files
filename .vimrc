set nocompatible
syntax on
set shortmess+=I
set number
set relativenumber
set laststatus=2
set backspace=indent,eol,start
set hidden
set ignorecase
set smartcase
set incsearch
nmap Q <Nop>
nnoremap <c-l> :<c-u>call search('\u')<cr>
nnoremap <c-h> :<c-u>call search('\u', 'b')<cr>
set noerrorbells visualbell t_vb=
set mouse=a
