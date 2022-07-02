syntax on

set nocompatible               " be iMproved

" always show tabs
set showtabline=2

set ignorecase

" turn off the default mode of vim
set noshowmode
set shortmess+=c

set cmdheight=1

" make the cursor always block
set guicursor=

set colorcolumn=+10
" adding the space for diagnostics messages
set signcolumn=yes

set ttyfast

" enable your mouse
set mouse=a

" Makes tabbing smarter will realize you have 2 vs 4
set smarttab

" Faster completion
set updatetime=30

" always show statusline
set laststatus=2

" stop auto commenting, this is hurtful more thaen it is useful
set formatoptions-=cro

" toggle spellcheck with ,s
" nmap <silent> <leader>s :set spell!<CR>

set encoding=UTF-8
" set cursorline
set nowrap "No Wrap lines

set number
set relativenumber
set numberwidth=4

set smartindent

" turn backup off, since most stuff is in SVN, git et.c anyway...
set nowb
set noswapfile
set nobackup

set nohlsearch
set lazyredraw
set scrolloff=8
set scroll=10

" always copy to clipboard
" set clipboard=unnamed
