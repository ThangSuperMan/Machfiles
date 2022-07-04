" init autocmd
autocmd!

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

  " telescope
  " Plug 'nvim-lua/popup.nvim'
  " Plug 'nvim-lua/plenary.nvim'
  " Plug 'nvim-telescope/telescope.nvim'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'nvim-lua/plenary.nvim' " don't forget to add this one if you don't have it yet!
  Plug 'ThePrimeagen/harpoon'

  " Decoration
  " Plug 'xiyaowong/nvim-transparent'
  Plug 'norcalli/nvim-colorizer.lua'
  Plug 'psliwka/vim-smoothie'
  Plug 'akinsho/toggleterm.nvim'
  Plug 'sainnhe/everforest'
  Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }

  " Icons
  Plug 'kyazdani42/nvim-web-devicons'

  " Lualine and tabline
  Plug 'alvarosevilla95/luatab.nvim'
  Plug 'hoob3rt/lualine.nvim'

  Plug 'kyazdani42/nvim-tree.lua'

  " Comments
  Plug 'tpope/vim-commentary'

  " explore files
  " Plug 'kristijanhusak/defx-icons'
  " Plug 'kristijanhusak/defx-git'
  " Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }

  Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
  Plug 'windwp/nvim-ts-autotag'
end

" highlight syntax js, jsx, css, html5 https://github.com/sheerun/vim-polyglot
Plug 'sheerun/vim-polyglot'

" Auto pairs
Plug 'jiangmiao/auto-pairs'

call plug#end()

" Prettier format
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
let g:prettier#config#jsxSingleQuote = 'true'

let g:prettier#autoformat_config_files = ['css', 'scss']

" autocmd VimEnter * highlight TabLineFill  guifg=#91AA90
  autocmd VimEnter * highlight TabLine ctermfg=247 ctermbg=238 guifg=#BB9597
" autocmd VimEnter * highlight TabLineSel ctermfg=235 ctermbg=142 guifg=#2f383e guibg=#8097A7
autocmd VimEnter * highlight TabLineSel ctermfg=235 ctermbg=142 guifg=#2f383e guibg=#BB9597
" autocmd VimEnter * highlight TabLine ctermfg=247 ctermbg=238 guifg=#d4d4d4
autocmd VimEnter * highlight TabLineFill guifg=#2f383e

" autocmd VimEnter * highlight Visual ctermbg=52 guibg=#2083C6

" Customize the defx with everforest theme
" autocmd VimEnter * highlight DefxIconsDirectory guifg=#2083C6
autocmd VimEnter * highlight Defx_filename_directory guifg=#7fbbb3
autocmd VimEnter * highlight Defx_filename_root guifg=#A7C080
autocmd VimEnter * highlight Defx_icon_directory_icon guifg=#E99B25
autocmd VimEnter * highlight Defx_icon_opened_icon guifg=#E99B25

" autocmd VimEnter * highlight CursorColumn ctermbg=8

" autocmd InsertEnter * highlight Cursor gui=reverse guifg=NONE guibg=#e99b25
" autocmd Learve * highlight Cursor gui=reverse guifg=NONE guibg=#e99b25
" highlight Cursor gui=NONE guifg=bg guibg=fg

source ~/.config/nvim/maps.vim
source ~/.config/nvim/sets.vim
" source ~/.config/nvim/after/plugins/nvim-transparent.vim
source ~/.config/nvim/after/plugins/ts-autotag.vim
source ~/.config/nvim/after/plugins/treesitter.vim
source ~/.config/nvim/after/plugins/tree-nvim.vim
source ~/.config/nvim/after/plugins/lspconfig.vim
source ~/.config/nvim/after/plugins/language-servers.vim
source ~/.config/nvim/after/plugins/cmp.vim
source ~/.config/nvim/after/plugins/lspsaga.vim
source ~/.config/nvim/after/plugins/lspkind.vim
" source ~/.config/nvim/after/plugins/telescope.vim
source ~/.config/nvim/after/plugins/lualine.vim
" source ~/.config/nvim/after/plugins/lualine-new.vim
source ~/.config/nvim/after/plugins/luatab.vim
source ~/.config/nvim/after/plugins/colorizer.vim
" source ~/.config/nvim/after/plugins/defx.vim
source ~/.config/nvim/after/plugins/toggleterm.vim
source ~/.config/nvim/after/plugins/harpoon.vim

" set guicursor=a:block-Cursor,i-r:hor20-Cursor
autocmd BufEnter * set scroll=10

" italic for comments
" let g:gruvbox_italic=1

" Cusomize any colorscheme with my favorite vibe cozy
" let g:thang_colorscheme = "everforest"
" fun! ColorMyPencils()
"     let g:gruvbox_contrast_dark = 'soft'
"     if exists('+termguicolors')
"         let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"         let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
"     endif
"     let g:gruvbox_invert_selection='0'

"     set background=dark
"     if has('nvim')
"         call luaeval('vim.cmd("colorscheme " .. _A[1])', [g:thang_colorscheme])
"     else
"         " TODO: What the way to use g:thang_colorscheme
"         colorscheme everforest
"     endif

"     highlight ColorColumn ctermbg=0 guibg=grey
"     hi SignColumn guibg=none
"     hi CursorLineNR guibg=None
"     highlight Normal guibg=none
"     " highlight LineNr guifg=#ff8659
"     " highlight LineNr guifg=#aed75f
"     highlight LineNr guifg=#5eacd3
"     highlight netrwDir guifg=#5eacd3
"     highlight qfFileName guifg=#aed75f
"     " hi TelescopeBorder guifg=#5eacd
" endfun
" call ColorMyPencils()

" " Vim with me
" nnoremap <leader>cmp :call ColorMyPencils()<CR>
" nnoremap <leader>vwb :let g:thang_colorscheme =
" highlight Normal guibg=none

" Search for selected text, forwards or backwards.
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>

if &term =~ "screen"
  autocmd BufEnter * if bufname("") !~ "^?[A-Za-z0-9?]*://" | silent! exe '!echo -n "\ek[`hostname`:`basename $PWD`/`basename %`]\e\\"' | endif
  autocmd VimLeave * silent!  exe '!echo -n "\ek[`hostname`:`basename $PWD`]\e\\"'
endif


" augroup BgHighlight
"   autocmd!
"   autocmd WinEnter * set cul
"   autocmd WinLeave * set nocul
" augroup END

" fun! TrimWhiteSpace()
"   let l:save = winsaveview()
"   keeppatterns %s/\s\+$//e
"   call winrestview(l:save)
" endfun

" augroup THANG
"   autocmd!
"   autocmd BufWritePre * :call TrimWhiteSpace()
" augroup END

" Super magic effect when yank something
augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 40})
augroup END


" Config with vim-smoothie
" set splitright


"set up for plugin hexokinase to show color background of color code in js,
"html, css file. Then we know how does it look like of the color
"
let g:Hexokinase_highlighters = ['backgroundfull']

set termguicolors
set background=dark " or light if you want light mode
let g:everforest_background = 'medium'
" For better performance
let g:everforest_better_performance = 1
colorscheme everforest

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
