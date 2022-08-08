call plug#begin()

  " Plug 'ruanyl/vim-gh-line'

if has("nvim")
   " Language server
   Plug 'neovim/nvim-lspconfig'
   Plug 'glepnir/lspsaga.nvim', { 'branch': 'main' }
   Plug 'onsails/lspkind-nvim'
   Plug 'williamboman/nvim-lsp-installer'

   " Cmp
   Plug 'hrsh7th/cmp-nvim-lsp'
   Plug 'hrsh7th/cmp-buffer'
   Plug 'hrsh7th/nvim-cmp'

   " Ruby
   Plug 'tpope/vim-rails'

   " Snippet
   Plug 'L3MON4D3/LuaSnip'
   Plug 'saadparwaiz1/cmp_luasnip'

   Plug 'Djancyp/cheat-sheet'

   " Plug 'romgrk/barbar.nvim'

   Plug 'ldelossa/buffertag'
   Plug 'ap/vim-css-color'
   " Plug 'ray-x/lsp_signature.nvim'
   " Plug 'windwp/nvim-ts-autotag'
   Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
   Plug 'kristijanhusak/defx-icons'
   Plug 'kristijanhusak/defx-git'
   Plug 'sainnhe/everforest'
   Plug 'andrewradev/splitjoin.vim'
   Plug 'AndrewRadev/tagalong.vim'
   Plug 'itchyny/lightline.vim'
   Plug 'AndrewRadev/sideways.vim'
   Plug 'kyazdani42/nvim-web-devicons'
   Plug 'numToStr/Comment.nvim'
   Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
   Plug 'alvan/vim-closetag'

   " Improve loading lua modules
   " Plug 'lewis6991/impatient.nvim'
 end

 " Auto pairs with treesitter
 Plug 'windwp/nvim-autopairs'
 Plug 'tweekmonster/startuptime.vim'

call plug#end()

lua << EOF

require("cheat-sheet").setup({
  auto_fill = {
    filetype = true,
    current_word = true,
  },

  main_win = {
    style = "minimal",
    border = "double",
  },

  input_win = {
    style = "minimal",
    border = "double",
  },
})

require('buffertag').setup({
    -- accepts any border options that `nvim_open_win` accepts.
    -- see ":help vim.api.nvim_open_win"
    border = "none",
})

EOF

" Lightline
let g:lightline = {
      \ 'colorscheme': 'powerline',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ],
      \   'right': [ [ 'percent' ],
      \              [ 'fileencoding', 'filetype' ] ]
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head',
      \ },
      \ }

nnoremap <c-h> :SidewaysLeft<cr>
nnoremap <c-l> :SidewaysRight<cr>

let g:closetag_filenames = '*.html, *.erb, *.tsx, *.js'

source ~/.config/nvim/sets.vim
source ~/.config/nvim/maps.vim
source ~/.config/nvim/after/plugins/treesitter.vim
" source ~/.config/nvim/after/plugins/lualine.vim
" source ~/.config/nvim/after/plugins/language-servers.vim
source ~/.config/nvim/after/plugins/lspconfig.vim
source ~/.config/nvim/after/plugins/lspsaga.vim
source ~/.config/nvim/after/plugins/cmp.vim
source ~/.config/nvim/after/plugins/luasnip.vim
source ~/.config/nvim/after/plugins/lspkind.vim
source ~/.config/nvim/after/plugins/defx.vim
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
let g:everforest_better_performance = 1
colorscheme everforest
