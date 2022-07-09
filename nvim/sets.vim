syntax on

set nocompatible               " be iMproved

" Nice menu when typing `:find *.py`
set wildmode=longest,list,full
set wildmenu

set splitbelow

" Decoration indent
" set list
" set listchars=tab:>-,space:⋅
" set listchars=tab:>-,space:i

" -- toggle invisible characters
" opt.list = true
" opt.listchars = {
"   tab = "→ ",
"   eol = "¬",
"   trail = "⋅",
"   extends = "❯",
"   precedes = "❮"
" }

" Show the tabline when at lease two tab open
set showtabline=1

set ignorecase
set smartcase

set title

set noshowmode " Turn off the insert mode
set shortmess+=c

" Hit enter /target and then it's gonna be go to the targget right away
set noincsearch

set cmdheight=1

set showmatch

set formatoptions-=cro

" make the cursor always block
" set guicursor=

" adding the space for diagnostics messages
set signcolumn=yes
set colorcolumn=80 " Display colomn margin (80 chars)

" Add asterisks in block comments
set formatoptions+=r

" enable your mouse
set mouse=a

" Makes tabbing smarter will realize you have 2 vs 4
set smarttab

set autowrite

" Faster completion
set updatetime=30

set t_Co=256

" always show statusline
set laststatus=2

" Autocomplete with dictionary words when spell check is on
" set complete+=kspell

" toggle spellcheck with ,s
nmap <silent> <leader>s :set spell!<CR>

set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab

set encoding=UTF-8
" set cursorline
set nowrap "No Wrap lines

set number
" set numberwidth=4
" set relativenumber

" set smartindent

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
