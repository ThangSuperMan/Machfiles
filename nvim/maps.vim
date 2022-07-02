" Change the map leader to the ,
let mapleader=" " "Default mapleader is \

" Move window
map sh <C-w>h
map sk <C-w>k
map sj <C-w>j
map sl <C-w>l

" turn spelling off or on
nnoremap ,s :setlocal spell!<Cr>

" yank to system clipboard
nnoremap <leader>y "+y

" insert mode
inoremap ww <ESC>:w<cr>

" greatest remap ever
xnoremap <leader>p "_dP

" nnoremap <c-s> :w!<cr>

" Split window
nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w

" Close a single buffer
nnoremap ,q :bd<CR>

" Delete a word backwards
" nnoremap dw vb"_d

nnoremap x "_x

" Go to start or end of line easier
nnoremap H ^
xnoremap H ^
nnoremap L g_
xnoremap L g_

nnoremap <leader>pv :Ex<CR>

inoremap <silent> <c-l> <C-o>A

" Yank from current cursor position to the end of the line (make it
" consistent with the behavior of D, C)
nnoremap Y y$

nnoremap <leader>s :set scroll=10<Cr>

" Jump out the curly brakets and isnert after that
" inoremap <C-]> <C-o>A

" Esc when state is insert mode
inoremap <C-[> <Esc>

" Move the selected line
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" FZF
nnoremap  <silent> ;f <cmd>FZF<Cr>

" Close all buffers
nmap <S-q> :bufdo bd<CR>

" Scroll setup
" nnoremap <C-u> 10<C-u>
" nnoremap <C-d> 10<C-d>

nmap = :res +2<CR> " increase pane by 2
nmap - :res -2<CR> " decrease pane by 2
nmap ] :vertical res +2<CR> " vertical increase pane by 2
nmap [ :vertical res -2<CR> " vertical decrease pane by 2

" paste the last thing yanked, not deleted
nmap ,p "0p
nmap ,P "0P

" nnoremap S :%s//g<Left><Left>

" Turn off the hightlight
nnoremap <Esc><Esc> :nohlsearch<CR>

" Copy whole text in file
nnoremap va :%y+<CR>

" Select all
" nmap <C-a> gg<S-v>G
nmap ,a gg<S-v>G

"-----------------------------
" Tabs

" Open current directory
nmap te :tabedit
nmap <S-Tab> :tabprev<Return>
nmap <Tab> :tabnext<Return>

"------------------------------
