call plug#begin()

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

if has("nvim")
  Plug 'neovim/nvim-lspconfig'
  Plug 'tami5/lspsaga.nvim', { 'branch': 'nvim6.0' }
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/nvim-cmp'
  Plug 'hrsh7th/vim-vsnip'
  Plug 'hrsh7th/cmp-vsnip'
  Plug 'onsails/lspkind-nvim'
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'hoob3rt/lualine.nvim'
  Plug 'tpope/vim-commentary'
  Plug 'kristijanhusak/defx-icons'
  Plug 'kristijanhusak/defx-git'
  Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'williamboman/nvim-lsp-installer'
  Plug 'norcalli/nvim-colorizer.lua'
  Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
  Plug 'windwp/nvim-ts-autotag'
  Plug 'sainnhe/everforest'
  Plug 'alvarosevilla95/luatab.nvim'
  Plug 'akinsho/toggleterm.nvim'
end

" highlight syntax js, jsx, css, html5 https://github.com/sheerun/vim-polyglot
Plug 'sheerun/vim-polyglot'

" Auto pairs
Plug 'jiangmiao/auto-pairs'

call plug#end()

Plug 'sbdchd/neoformat'

" autocmd VimEnter * highlight TabLineFill  guifg=#91AA90 
  " autocmd VimEnter * highlight TabLine ctermfg=247 ctermbg=238 guifg=#BB9597 
" autocmd VimEnter * highlight TabLineSel ctermfg=235 ctermbg=142 guifg=#2f383e guibg=#8097A7
" autocmd VimEnter * highlight TabLineSel ctermfg=235 ctermbg=142 guifg=#d4d4d4 guibg=#007acc
" autocmd VimEnter * highlight TabLine ctermfg=247 ctermbg=238 guifg=#d4d4d4
" autocmd VimEnter * highlight TabLineFill  guifg=#d4d4d4

autocmd VimEnter * highlight Visual ctermbg=52 guibg=#2083C6

" Customize the defx with everforest theme
" autocmd VimEnter * highlight DefxIconsDirectory guifg=#2083C6
autocmd VimEnter * highlight Defx_filename_directory guifg=#7fbbb3
autocmd VimEnter * highlight Defx_filename_root guifg=#A7C080
autocmd VimEnter * highlight Defx_icon_directory_icon guifg=#E99B25

source ~/.config/nvim/maps.vim
source ~/.config/nvim/after/plugins/ts-autotag.vim
source ~/.config/nvim/after/plugins/treesitter.vim
source ~/.config/nvim/after/plugins/lspconfig.vim
source ~/.config/nvim/after/plugins/language-servers.vim 
source ~/.config/nvim/after/plugins/cmp.vim
source ~/.config/nvim/after/plugins/lspsaga.vim
source ~/.config/nvim/after/plugins/lspkind.vim
source ~/.config/nvim/after/plugins/telescope.vim
source ~/.config/nvim/after/plugins/lualine-new.vim
source ~/.config/nvim/after/plugins/luatab.vim
source ~/.config/nvim/after/plugins/colorizer.vim
source ~/.config/nvim/after/plugins/defx.vim 
source ~/.config/nvim/after/plugins/toggle-term.vim 

set background=dark " or light if you want light mode
let g:everforest_background = 'hard'

" colorscheme darkplus
" For better performance
let g:everforest_better_performance = 1
colorscheme everforest

set nocompatible               " be iMproved
filetype off                   " required!

" Always show tabs
set showtabline=2

" turn off the default mode of vim
set noshowmode

set cmdheight=1

" allow use click
set mouse=a

" always show statusline
set laststatus=2

" toggle spellcheck with ,s
nmap <silent> <leader>s :set spell!<CR>

set encoding=UTF-8
set cursorline 
set scrolloff=10
set nowrap "No Wrap lines
set number

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" Copy to clipboard 
set clipboard=unnamed

" Add asterisks in block comments
set formatoptions+=r

"set up for plugin hexokinase to show color background of color code in js,
"html, css file. Then we know how does it look like of the color
"
set termguicolors
let g:Hexokinase_highlighters = ['backgroundfull']

" let g:solarized_termcolors=256

" colorscheme gruvbox
" set background=dark

" Syntax theme "{{{
" ---------------------------------------------------------------------

" true color
" if exists("&termguicolors") && exists("&winblend")
"   syntax enable
"   set termguicolors
"   set winblend=0
"   set wildoptions=pum
"   set pumblend=5
"   set background=dark
"   " Use NeoSolarized
"   let g:neosolarized_termtrans=1
"   runtime ./colors/NeoSolarized.vim
"   colorscheme NeoSolarized
" endif

"}}}

" Extras "{{{
" ---------------------------------------------------------------------
" set exrc
"}}}
