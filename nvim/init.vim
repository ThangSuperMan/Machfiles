call plug#begin()

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

if has("nvim")
  " Language server
  " Plug 'neovim/nvim-lspconfig'
  " Plug 'williamboman/nvim-lsp-installer'

  " Plug 'tami5/lspsaga.nvim', { 'branch': 'nvim6.0' }

  " Cmp
  " Plug 'hrsh7th/cmp-nvim-lsp'
  " Plug 'hrsh7th/cmp-buffer'
  " Plug 'hrsh7th/nvim-cmp'
  " Plug 'hrsh7th/vim-vsnip'
  " Plug 'hrsh7th/cmp-vsnip'
  " Plug 'onsails/lspkind-nvim'

  " Snippet
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'

  Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
  Plug 'terryma/vim-multiple-cursors'
  Plug 'ray-x/lsp_signature.nvim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}

  " explore files
  " Defx 
  " Plug 'kristijanhusak/defx-icons'
  " Plug 'kristijanhusak/defx-git'
  " Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'preservim/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'ryanoasis/vim-devicons'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

  " telescope
  " Plug 'nvim-lua/popup.nvim'
  " Plug 'nvim-lua/plenary.nvim'
  " Plug 'nvim-telescope/telescope.nvim'
  " Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

  " Decoration
  Plug 'xiyaowong/nvim-transparent'
  Plug 'norcalli/nvim-colorizer.lua'
  " Plug 'psliwka/vim-smoothie'
  Plug 'sainnhe/everforest'

  Plug 'andrewradev/splitjoin.vim'
  Plug 'AndrewRadev/sideways.vim'

  Plug 'tpope/vim-rails'

  " Prettier
  Plug 'sbdchd/neoformat'

  " Icons
  Plug 'kyazdani42/nvim-web-devicons'

  " Lualine and tabline
  Plug 'hoob3rt/lualine.nvim'
  Plug 'itchyny/lightline.vim'

  " Comments
  Plug 'tpope/vim-commentary'

  Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
  Plug 'windwp/nvim-ts-autotag'

  " Improve loading lua modules
  Plug 'lewis6991/impatient.nvim'
end

" Auto pairs with treesitter
Plug 'jiangmiao/auto-pairs'
Plug 'tweekmonster/startuptime.vim'

call plug#end()

" Snippet
let g:UltiSnipsSnippetDirectories=["UltiSnips"]
let g:UltiSnipsExpandTrigger="<c-c>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

nmap ,f :Format <CR>

" Lightline
let g:lightline = {
      \ 'colorscheme': 'everforest',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'cocstatus', 'readonly', 'filename', 'modified' ] ],
      \   'right': [ [ 'lineinfo', 'percent' ],
      \              [ 'fileformat', 'fileencoding', 'filetype' ] ]
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head',
      \   'cocstatus': 'coc#status'
      \ },
      \ }

" Sideways
nnoremap <c-h> :SidewaysLeft<cr>
nnoremap <c-l> :SidewaysRight<cr>

" Impatent
lua require('impatient')

" Customize the current number of cursor
autocmd VimEnter * hi CursorLine ctermbg=236 guibg=none

" Fzf
" let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.4, 'relative': v:true } }

" Multi select
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'

nnoremap ,f :Neoformat<CR>

" Go file config
au FileType go set noexpandtab
au FileType go set shiftwidth=4
au FileType go set softtabstop=4
au FileType go set tabstop=4

source ~/.config/nvim/sets.vim
source ~/.config/nvim/maps.vim
source ~/.config/nvim/after/plugins/treesitter.vim
" source ~/.config/nvim/after/plugins/language-servers.vim
" source ~/.config/nvim/after/plugins/lspconfig.vim
" source ~/.config/nvim/after/plugins/lspsaga.vim
" source ~/.config/nvim/after/plugins/cmp.vim
" source ~/.config/nvim/after/plugins/lspkind.vim
source ~/.config/nvim/after/plugins/coc.vim
source ~/.config/nvim/after/plugins/nerdtree.vim
source ~/.config/nvim/after/plugins/colorizer.vim
" source ~/.config/nvim/after/plugins/defx.vim
source ~/.config/nvim/after/plugins/lualine.vim
source ~/.config/nvim/after/plugins/nvim-transparent.vim

"        /-----------------/
">>-----/    FUNCTIONS    /------------>
"      /-----------------/


" augroup BgHighlight
"   autocmd!
"   autocmd WinEnter * set nocul
"   autocmd WinLeave * set cul
" augroup END

" Fix error scroll up and down to high
" augroup ScrollSmoothie
"   autocmd!
"   autocmd WinEnter * set scroll=15
" augroup END

"auto close when hit enter
" function! s:CloseBracket()
"     let line = getline('.')
"     if line =~# '^\s*\(struct\|class\|enum\) '
"         return "{\<Enter>};\<Esc>O"
"     elseif searchpair('(', '', ')', 'bmn', '', line('.'))
"         " Probably inside a function call. Close it off.
"         return "{\<Enter>});\<Esc>O"
"     else
"         return "{\<Enter>}\<Esc>O"
"     endif
" endfunction
" inoremap <expr> {<Enter> <SID>CloseBracket()

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
