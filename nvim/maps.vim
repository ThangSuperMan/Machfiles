" Change the map leader to the ,
let mapleader=" " "Default mapleader is \

" Move window
map sh <C-w>h
map sk <C-w>k
map sj <C-w>j
map sl <C-w>l

nnoremap ; :

" Make windows to be basically the same size
nnoremap <leader>= <C-w>=

" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
nnoremap n nzzzv
nnoremap N Nzzzv

" greatest remap ever
xnoremap <leader>p "_dP

" Write current buffer
" nnoremap <leader>w :write<CR>

" jump up 4 lines in normal mode
" nnoremap <silent> <C-k> :normal 4k<CR>

" jump down 4 lines in normal mode
" nnoremap <silent> <C-j> :normal 4j<CR>

" better substitute 
" nnoremap <leader>z :%s/<C-R><C-W>/<C-R>0/g<CR>

" turn spelling off or on
nnoremap ,s :setlocal spell!<Cr>

" Remove highlight
map <Esc><Esc> :nohl<CR>

" Use tab with text block
vmap <Tab> >gv
vmap <S-Tab> <gv

" Split window
nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w

nnoremap <leader>f :FZF<Cr>

" Delete a word backwards and do not yank
" nnoremap dw vb"_d

" Delete without yank
nnoremap <leader>d "_d

" Delete letter without yank
nnoremap x "_x

" Go to start or end of line easier
nnoremap H ^
xnoremap H ^
nnoremap L g_
xnoremap L g_

" Yank from current cursor position to the end of the line (make it
" consistent with the behavior of D, C)
nnoremap Y y$

" Jump out the curly brakets and isnert after that
" inoremap <C-]> <C-o>A
inoremap <silent> <c-l> <C-o>A

" Esc when state is insert mode
inoremap <C-[> <Esc>

" Move the selected line
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Scroll setup
nnoremap <C-d> 10<C-d>
nnoremap <C-u> 10<C-u>

nmap = :res +5<CR> " increase pane by 2
nmap - :res -5<CR> " decrease pane by 2
nmap ] :vertical res +5<CR> " vertical increase pane by 2
nmap [ :vertical res -5<CR> " vertical decrease pane by 2

" paste the last thing yanked, not deleted
" nmap ,p "0p
" nmap ,P "0P


" Copy whole text in file
nnoremap ya :%y+<CR>

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
