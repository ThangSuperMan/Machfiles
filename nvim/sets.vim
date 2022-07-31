set nocompatible               " be iMproved

set fileencodings=utf-8,sjis,euc-jp,latin
set encoding=utf-8

" Searching to the sub dicrectory with find command
set path+=**

set wildignore+=*_build/*
set wildignore+=**/node_modules/*

set backspace=2

" Nice menu when typing `:find *.py`
" set wildmode=longest,list,full
set wildmenu

" set guicursor=n-v-c-i-sm:block

" Decoration indent
" set list
" set listchars=tab:>-,space:⋅

" Show the tabline when at lease two tab open
set showtabline=1

set ignorecase
set smartcase

set noshowmode " Turn off the insert mode
" set shortmess+=c

set cmdheight=1

set showmatch

set formatoptions-=cro

" adding the space for diagnostics messages
" set signcolumn=yes

" enable your mouse
set mouse=a

" Makes tabbing smarter will realize you have 2 vs 4
set smarttab

set autowrite

" Faster completion
set updatetime=300

set t_Co=256

nnoremap <silent> Q <nop>

" always show statusline
set laststatus=2

" toggle spellcheck
nmap <silent> <leader>s :set spell!<CR>

set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab

set encoding=UTF-8
set cursorline
set nowrap "No Wrap lines

set number
" set relativenumber
" set ruler

" turn backup off, since most stuff is in SVN, git et.c anyway...
set nowb
set noswapfile
set nobackup

" set nohlsearch
set lazyredraw
set scrolloff=8
" set scroll=10

" always copy to clipboard
set clipboard=unnamed
