call plug#begin()

  Plug 'ruanyl/vim-gh-line'

if has("nvim")
  " Language server
  Plug 'neovim/nvim-lspconfig'
  Plug 'glepnir/lspsaga.nvim', { 'branch': 'main' }
  Plug 'onsails/lspkind-nvim'
  " Plug 'williamboman/nvim-lsp-installer'
  
  " Go
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

  " Cmp
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/nvim-cmp'
  Plug 'hrsh7th/vim-vsnip'
  Plug 'hrsh7th/cmp-vsnip'

  Plug 'terryma/vim-multiple-cursors'

  " Css
  Plug 'ap/vim-css-color'

  " Signature
  Plug 'ray-x/lsp_signature.nvim'

  " Explore files
  Plug 'kristijanhusak/defx-icons'
  Plug 'kristijanhusak/defx-git'
  Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }

  " telescope
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'

  " Decoration
  Plug 'xiyaowong/nvim-transparent'
  Plug 'sainnhe/everforest'

  Plug 'andrewradev/splitjoin.vim'

  " Prettier
  " Plug 'sbdchd/neoformat'

  " Icons
  Plug 'kyazdani42/nvim-web-devicons'

  " Lualine and tabline
  Plug 'hoob3rt/lualine.nvim'
  " Plug 'itchyny/lightline.vim'

  " Comments
  " Plug 'tpope/vim-commentary'

  Plug 'numToStr/Comment.nvim'

  Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
  Plug 'windwp/nvim-ts-autotag'

  " Improve loading lua modules
  Plug 'lewis6991/impatient.nvim'
end

" Auto pairs with treesitter
" Plug 'jiangmiao/auto-pairs'
Plug 'windwp/nvim-autopairs'
Plug 'tweekmonster/startuptime.vim'

call plug#end()

nnoremap rr :GoRun<CR>

lua << EOF

 require("nvim-autopairs").setup {}

EOF

" nmap ,f :Format <CR>

" Sideways
" nnoremap <c-h> :SidewaysLeft<cr>
" nnoremap <c-l> :SidewaysRight<cr>

" Impatent
lua require('impatient')

" Customize the current number of cursor
" autocmd VimEnter * hi CursorLine ctermbg=236 guibg=none

" Fzf
" let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.4, 'relative': v:true } }

" Multi select
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'

" nnoremap ,f :Neoformat<CR>

" Go file config
" au FileType go set noexpandtab
" au FileType go set shiftwidth=4
" au FileType go set softtabstop=4
" au FileType go set tabstop=4

source ~/.config/nvim/sets.vim
source ~/.config/nvim/maps.vim
source ~/.config/nvim/after/plugins/treesitter.vim
source ~/.config/nvim/after/plugins/telescope.vim
" source ~/.config/nvim/after/plugins/language-servers.vim
source ~/.config/nvim/after/plugins/lspconfig.vim
source ~/.config/nvim/after/plugins/lspsaga.vim
source ~/.config/nvim/after/plugins/cmp.vim
source ~/.config/nvim/after/plugins/lspkind.vim
source ~/.config/nvim/after/plugins/defx.vim
" source ~/.config/nvim/after/plugins/lualine.vim

lua << EOF
require('lualine').setup {
  options = {
    theme = 'everforest'
  }
}

EOF
source ~/.config/nvim/after/plugins/comment.vim
" source ~/.config/nvim/after/plugins/nvim-transparent.vim

"        /-----------------/
">>-----/    FUNCTIONS    /------------>
"      /-----------------/

" Super magic effect when yank something
augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 40})
augroup END

" Display colors hexa
let g:Hexokinase_highlighters = ['backgroundfull']

set termguicolors
set background=dark " or light if you want light mode
let g:everforest_background = 'soft'
" For better performance
let g:everforest_better_performance = 1
colorscheme everforest
