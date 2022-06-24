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
  " Plug 'neoclide/coc.nvim', {'branch': 'release'}
  " Plug 'glepnir/dashboard-nvim'
  Plug 'williamboman/nvim-lsp-installer'
  Plug 'norcalli/nvim-colorizer.lua'
  Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
  Plug 'windwp/nvim-ts-autotag'
end

" highlight syntax js, jsx, css, html5 https://github.com/sheerun/vim-polyglot
Plug 'sheerun/vim-polyglot'

" Auto pairs
Plug 'jiangmiao/auto-pairs'

call plug#end()

" Change the highlight color of cmp plug
autocmd VimEnter * highlight CmpItemKindDefault ctermfg=1 guifg=#839496

" Change color diagnostics of statusline
autocmd VimEnter * highlight DiagnosticError ctermfg=1 guifg=#fd5d5d

" " Override color when working with golang project
" autocmd VimEnter * hi KeyWord ctermfg=2 guifg=#268bd2
" autocmd VimEnter * hi goImport ctermfg=2 guifg=#DC3C32
" autocmd VimEnter * hi goPackage ctermfg=2 guifg=#DC3C32
" autocmd VimEnter * hi goPointerOperator ctermfg=2 guifg=#DC3C32

" Defx_icons_go  xxx ctermfg=137 guifg=#F5C06F
autocmd VimEnter * hi Defx_icons_go ctermfg=2 guifg=#689FB6

source ~/.config/nvim/maps.vim
source ~/.config/nvim/after/plugins/ts-autotag.vim
source ~/.config/nvim/after/plugins/treesitter.vim
source ~/.config/nvim/after/plugins/lspconfig.vim
source ~/.config/nvim/after/plugins/language-servers.vim 
source ~/.config/nvim/after/plugins/cmp.vim
" source ~/.config/nvim/after/plugins/compe.vim
source ~/.config/nvim/after/plugins/lspsaga.vim
source ~/.config/nvim/after/plugins/lspkind.vim
" source ~/.config/nvim/after/plugins/coc.vim 
source ~/.config/nvim/after/plugins/telescope.vim
source ~/.config/nvim/after/plugins/lualine.vim
source ~/.config/nvim/after/plugins/colorizer.vim
source ~/.config/nvim/after/plugins/tabline.vim
source ~/.config/nvim/after/plugins/defx.vim 
" source ~/.config/nvim/after/plugins/dashboard.vim 

" Setting the color rot current line 
set cursorline 

set scrolloff=10

set nowrap "No Wrap lines

" Auto have number of lines in ide
autocmd VimEnter * set number

" Set no swapfile
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

let g:solarized_termcolors=256

" colorscheme gruvbox
" set background=dark

" Syntax theme "{{{
" ---------------------------------------------------------------------

" true color
if exists("&termguicolors") && exists("&winblend")
  syntax enable
  set termguicolors
  set winblend=0
  set wildoptions=pum
  set pumblend=5
  set background=dark
  " Use NeoSolarized
  let g:neosolarized_termtrans=1
  runtime ./colors/NeoSolarized.vim
  colorscheme NeoSolarized
endif

"}}}

" Extras "{{{
" ---------------------------------------------------------------------
set exrc
"}}}
