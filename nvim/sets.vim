set nocompatible               " be iMproved

set fileencodings=utf-8,sjis,euc-jp,latin
set encoding=utf-8

" set term=screen-256color

" Searching to the sub dicrectory with find command
set path+=**

" set list 
" set listchars=tab:┆·,trail:·,precedes:,extends:

set wildignore+=*_build/*
set wildignore+=**/node_modules/*

set backspace=2

set inccommand=split

" Decoration indent
" set list
" set listchars=tab:>-,space:⋅

" Show the tabline when at lease two tab open
set showtabline=1

set ignorecase
set smartcase

" set noshowmode " Turn off the insert mode
" set shortmess+=c

set cmdheight=1

set showmatch

set formatoptions-=cro

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

" toggle spellcheck
nmap <silent> <leader>s :set spell!<CR>

set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab

set encoding=UTF-8
" set cursorline
set nowrap "No Wrap lines

set number
" set relativenumber
" set ruler

" turn backup off, since most stuff is in SVN, git et.c anyway...
set nowb
set noswapfile
set nobackup

" Improve scrolling
set lazyredraw

set scrolloff=8
" set scroll=10

" always copy to clipboard
set clipboard=unnamed
