call plug#begin()

  Plug 'ruanyl/vim-gh-line'

if has("nvim")
   " Language server
   Plug 'neovim/nvim-lspconfig'
   Plug 'glepnir/lspsaga.nvim', { 'branch': 'main' }
   Plug 'onsails/lspkind-nvim'
   " Plug 'williamboman/nvim-lsp-installer'

   " Cmp
   Plug 'hrsh7th/cmp-nvim-lsp'
   Plug 'hrsh7th/cmp-buffer'
   Plug 'hrsh7th/nvim-cmp'
   Plug 'hrsh7th/vim-vsnip'
   Plug 'hrsh7th/cmp-vsnip'

   Plug 'akinsho/toggleterm.nvim', {'tag' : 'v2.*'}
   Plug 'ldelossa/buffertag'
   Plug 'terryma/vim-multiple-cursors'
   Plug 'ap/vim-css-color'
   " Plug 'ray-x/lsp_signature.nvim'
   Plug 'kristijanhusak/defx-icons'
   Plug 'kristijanhusak/defx-git'
   Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
   Plug 'sainnhe/everforest'
   Plug 'andrewradev/splitjoin.vim'
   " Prettier
   " Plug 'sbdchd/neoformat'
   Plug 'kyazdani42/nvim-web-devicons'
   Plug 'numToStr/Comment.nvim'
   Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
   Plug 'windwp/nvim-ts-autotag'

   " Improve loading lua modules
   " Plug 'lewis6991/impatient.nvim'
 end

 " Auto pairs with treesitter
 Plug 'windwp/nvim-autopairs'
 Plug 'tweekmonster/startuptime.vim'

call plug#end()

" nmap ,f :Format <CR>

" Impatent
" lua require('impatient')
lua require('buffertag').enable()

" Multi select
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'

" nnoremap ,f :Neoformat<CR>

source ~/.config/nvim/sets.vim
source ~/.config/nvim/maps.vim
source ~/.config/nvim/after/plugins/treesitter.vim
source ~/.config/nvim/after/plugins/toggle-term.vim
" source ~/.config/nvim/after/plugins/language-servers.vim
" source ~/.config/nvim/helper.lua
source ~/.config/nvim/after/plugins/lspconfig.vim
source ~/.config/nvim/after/plugins/lspsaga.vim
source ~/.config/nvim/after/plugins/cmp.vim
source ~/.config/nvim/after/plugins/lspkind.vim
source ~/.config/nvim/after/plugins/defx.vim
source ~/.config/nvim/after/plugins/lualine.vim
source ~/.config/nvim/after/plugins/comment.vim


"        /-----------------/
">>-----/    FUNCTIONS    /------------>
"      /-----------------/

" Super magic effect when yank something
augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({higroup = "Substitute", timeout = 100})
augroup END

set termguicolors
set background=dark " or light if you want light mode
let g:everforest_background = 'hard'
" For better performance
let g:everforest_better_performance = 1
colorscheme everforest
