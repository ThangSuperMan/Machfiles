call plug#begin()

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

if has("nvim")
  " Language server
  Plug 'neovim/nvim-lspconfig'
  Plug 'williamboman/nvim-lsp-installer'

  Plug 'tami5/lspsaga.nvim', { 'branch': 'nvim6.0' }
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/nvim-cmp'
  Plug 'hrsh7th/vim-vsnip'
  Plug 'hrsh7th/cmp-vsnip'
  Plug 'onsails/lspkind-nvim'
  Plug 'gruvbox-community/gruvbox'
  Plug 'Mofiqul/dracula.nvim'

  Plug 'terryma/vim-multiple-cursors'

  " explore files

  " Defx 
  Plug 'kristijanhusak/defx-icons'
  Plug 'kristijanhusak/defx-git'
  Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }

  " telescope
  " Plug 'nvim-lua/popup.nvim'
  " Plug 'nvim-lua/plenary.nvim'
  " Plug 'nvim-telescope/telescope.nvim'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

  " Decoration
  Plug 'xiyaowong/nvim-transparent'
  Plug 'norcalli/nvim-colorizer.lua'
  Plug 'psliwka/vim-smoothie'
  Plug 'sainnhe/everforest'

  " Prettier
  Plug 'sbdchd/neoformat'

  " Icons
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'ryanoasis/vim-devicons'

  " Lualine and tabline
  Plug 'alvarosevilla95/luatab.nvim'
  Plug 'hoob3rt/lualine.nvim'
  " Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }
  " Plug 'itchyny/lightline.vim'

  " Plug 'kyazdani42/nvim-tree.lua'

  " Comments
  Plug 'tpope/vim-commentary'

  " Learn vim
  Plug 'ThePrimeagen/vim-be-good'


  Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
  Plug 'windwp/nvim-ts-autotag'
end

" highlight syntax js, jsx, css, html5 https://github.com/sheerun/vim-polyglot
" Plug 'sheerun/vim-polyglot'

" Auto pairs
Plug 'jiangmiao/auto-pairs'

call plug#end()

" Multi select
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'

nnoremap ,f :Neoformat<CR>

" stop auto commenting, this is hurtful more then it is useful
autocmd BufNewFile,BufRead * setlocal formatoptions-=cro

let g:thang_colorscheme = "gruvbox"
fun! ColorMyPencils()
    let g:gruvbox_contrast_dark = 'hard'
    if exists('+termguicolors')
        let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
        let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    endif
    let g:gruvbox_invert_selection='0'

    set background=dark
    if has('nvim')
        call luaeval('vim.cmd("colorscheme " .. _A[1])', [g:thang_colorscheme])
    else
        " TODO: What the way to use g:theprimeagen_colorscheme
        colorscheme gruvbox
    endif

    highlight ColorColumn ctermbg=0 guibg=grey
    hi SignColumn guibg=none
    hi CursorLineNR guibg=None
    highlight Normal guibg=none
    " highlight LineNr guifg=#ff8659
    " highlight LineNr guifg=#aed75f
    highlight LineNr guifg=#5eacd3
    highlight netrwDir guifg=#5eacd3
    highlight qfFileName guifg=#aed75f
    hi TelescopeBorder guifg=#5eacd
endfun
call ColorMyPencils()

source ~/.config/nvim/maps.vim
source ~/.config/nvim/sets.vim
source ~/.config/nvim/after/plugins/nvim-transparent.vim
source ~/.config/nvim/after/plugins/ts-autotag.vim
source ~/.config/nvim/after/plugins/treesitter.vim
" source ~/.config/nvim/after/plugins/tree-nvim.vim
source ~/.config/nvim/after/plugins/lspconfig.vim
source ~/.config/nvim/after/plugins/language-servers.vim
source ~/.config/nvim/after/plugins/cmp.vim
source ~/.config/nvim/after/plugins/lspsaga.vim
source ~/.config/nvim/after/plugins/lspkind.vim
" source ~/.config/nvim/after/plugins/telescope.vim
" source ~/.config/nvim/after/plugins/lualine.vim
" source ~/.config/nvim/after/plugins/customize-statusline.vim
source ~/.config/nvim/after/plugins/tabline.vim
source ~/.config/nvim/after/plugins/colorizer.vim
" source ~/.config/nvim/after/plugins/nerd-tree.vim
source ~/.config/nvim/after/plugins/defx.vim
source ~/.config/nvim/after/plugins/lualine.vim
source ~/.config/nvim/after/plugins/luatab.vim
" source ~/.config/nvim/after/plugins/harpoon.vim


"        /-----------------/
">>-----/    FUNCTIONS    /------------>
"      /-----------------/
"

" autocmd VimEnter * highlight CursorLine ctermbg=236 guibg=none

" hi CursorLineNR cterm=bold
" augroup CLNRSet
"     autocmd! ColorScheme * hi CursorLineNR cterm=bold guifg=#d3c6aa
" augroup END

augroup ScrollSmoothie
  autocmd!
  autocmd WinEnter * set scroll=10
augroup END

" Super magic effect when yank something
augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 40})
augroup END

" Display colors hexa
let g:Hexokinase_highlighters = ['backgroundfull']


" set termguicolors
" set background=dark " or light if you want light mode
" let g:everforest_background = 'soft'
" " For better performance
" let g:everforest_better_performance = 1
" colorscheme everforest

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
