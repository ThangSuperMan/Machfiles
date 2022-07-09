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
  Plug 'lifepillar/vim-gruvbox8'

  Plug 'terryma/vim-multiple-cursors'
  Plug 'ray-x/lsp_signature.nvim'

  " explore files
  " Defx 
  Plug 'kristijanhusak/defx-icons'
  Plug 'kristijanhusak/defx-git'
  Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }

  " telescope
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  " Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

  " Decoration
  " Plug 'xiyaowong/nvim-transparent'
  Plug 'norcalli/nvim-colorizer.lua'
  " Plug 'psliwka/vim-smoothie'
  Plug 'sainnhe/everforest'
  Plug 'junegunn/seoul256.vim'

  " Prettier
  Plug 'sbdchd/neoformat'

  " Icons
  Plug 'kyazdani42/nvim-web-devicons'

  " Lualine and tabline
  Plug 'alvarosevilla95/luatab.nvim'
  Plug 'hoob3rt/lualine.nvim'

  " Plug 'kyazdani42/nvim-tree.lua'

  " Comments
  Plug 'tpope/vim-commentary'
  Plug 'justinmk/vim-sneak'

  Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
  Plug 'windwp/nvim-ts-autotag'

  " Improve loading lua modules
  Plug 'lewis6991/impatient.nvim'
end


" highlight syntax js, jsx, css, html5 https://github.com/sheerun/vim-polyglot
" Plug 'sheerun/vim-polyglot'

" Auto pairs
" Plug 'jiangmiao/auto-pairs'
Plug 'tweekmonster/startuptime.vim'

call plug#end()

" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
nnoremap n nzzzv
nnoremap N Nzzzv

lua require('impatient')

filetype plugin indent on " Enable file detection and plugins

" Snake 
let g:sneak#label = 1
map f <Plug>Sneak_s
map F <Plug>Sneak_S

" Fzf
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.4, 'relative': v:true } }

" Multi select
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'

nnoremap ,f :Neoformat<CR>

" stop auto commenting, this is hurtful more then it is useful
autocmd BufNewFile,BufRead * setlocal formatoptions-=cro

" let g:everforest_background = 'gruvbox8_soft'
" let g:thang_colorscheme = "everforest"
"  fun! ColorMyPencils()
"     " let g:gruvbox_contrast_dark = 'soft'
"      if exists('+termguicolors')
"          let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"          let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
"      endif
"      let g:gruvbox_invert_selection='0'

"      set background=dark
"      if has('nvim')
"          call luaeval('vim.cmd("colorscheme " .. _A[1])', [g:thang_colorscheme])
"      else
"          " TODO: What the way to use g:theprimeagen_colorscheme
"          colorscheme everforest
"      endif

"      highlight ColorColumn ctermbg=0 guibg=grey
"      hi SignColumn guibg=none
"      " hi CursorLineNR guibg=None
"      highlight Normal guibg=none
"      " highlight LineNr guifg=#ff8659
"      highlight LineNr guifg=#aed75f
"      highlight LineNr guifg=#5eacd3
"      " highlight netrwDir guifg=#5eacd3
"      highlight qfFileName guifg=#aed75f
"      " hi TelescopeBorder guifg=#5eacd
"  endfun
"  call ColorMyPencils()

" colorscheme everforest

" highlight Normal guibg=none

map <buffer> Q :q<cr>

source ~/.config/nvim/maps.vim
source ~/.config/nvim/sets.vim
source ~/.config/nvim/after/plugins/treesitter.vim
source ~/.config/nvim/after/plugins/lspconfig.vim
source ~/.config/nvim/after/plugins/language-servers.vim
source ~/.config/nvim/after/plugins/cmp.vim
source ~/.config/nvim/after/plugins/lspsaga.vim
source ~/.config/nvim/after/plugins/lspkind.vim
source ~/.config/nvim/after/plugins/telescope.vim
source ~/.config/nvim/after/plugins/colorizer.vim
source ~/.config/nvim/after/plugins/defx.vim
source ~/.config/nvim/after/plugins/lualine-new.vim
" source ~/.config/nvim/after/plugins/luatab.vim


"        /-----------------/
">>-----/    FUNCTIONS    /------------>
"      /-----------------/
"

" autocmd VimEnter * highlight CursorLine ctermbg=236 guibg=none

" CursorIM       xxx links to Cursor
" autocmd VimEnter * hi CursorIM guibg=none

" hi CursorLineNR cterm=bold
" augroup CLNRSet
"     autocmd! ColorScheme * h CursorLine ctermbg=235 guibg=none guifg=#BEC672
"     autocmd! ColorScheme * hi CursorLineNR cterm=bold guifg=#BEC672 guibg=none
" augroup END

" augroup BgHighlight
"   autocmd!
"   autocmd WinEnter * set cul
"   autocmd WinLeave * set nocul
" augroup END

" Fix error scroll up and down to high
" augroup ScrollSmoothie
"   autocmd!
"   autocmd WinEnter * set scroll=10
" augroup END

" Auto adding the single of double quote
ino ' ''<left>
ino " ""<left>
ino ( ()<left>

"auto close when hit enter
function! s:CloseBracket()
    let line = getline('.')
    if line =~# '^\s*\(struct\|class\|enum\) '
        return "{\<Enter>};\<Esc>O"
    elseif searchpair('(', '', ')', 'bmn', '', line('.'))
        " Probably inside a function call. Close it off.
        return "{\<Enter>});\<Esc>O"
    else
        return "{\<Enter>}\<Esc>O"
    endif
endfunction
inoremap <expr> {<Enter> <SID>CloseBracket()

" Super magic effect when yank something
augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 40})
augroup END

" Display colors hexa
let g:Hexokinase_highlighters = ['backgroundfull']
"
"
 set termguicolors
 set background=dark " or light if you want light mode
 let g:everforest_background = 'soft'
 " For better performance
 let g:everforest_better_performance = 1
  colorscheme everforest
