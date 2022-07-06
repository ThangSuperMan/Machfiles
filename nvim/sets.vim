syntax on

set nocompatible               " be iMproved

" Nice menu when typing `:find *.py`
set wildmode=longest,list,full
set wildmenu

" always show tabs
set showtabline=2

set ignorecase
set smartcase

set title

" turn off the default mode of set 
set noshowmode
set shortmess+=c

set cmdheight=1

set showmatch

set formatoptions-=cro

" make the cursor always block
set guicursor=

" set colorcolumn=+10
" adding the space for diagnostics messages
set signcolumn=yes
set colorcolumn=80

" Add asterisks in block comments
set formatoptions+=r

" enable your mouse
set mouse=a

" Makes tabbing smarter will realize you have 2 vs 4
set smarttab

set autowrite

" Faster completion
set updatetime=300

set t_Co=256

" always show statusline
set laststatus=2

" Autocomplete with dictionary words when spell check is on
set complete+=kspell

" toggle spellcheck with ,s
nmap <silent> <leader>s :set spell!<CR>

set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab

set encoding=UTF-8
" set cursorline
set nowrap "No Wrap lines

set number
set relativenumber
set numberwidth=4

" set smartindent

" turn backup off, since most stuff is in SVN, git et.c anyway...
set nowb
set noswapfile
set nobackup

" set nohlsearch
set lazyredraw
set scrolloff=10
set scroll=10

" always copy to clipboard
set clipboard=unnamed
