" Change the map leader to the ,
let mapleader="," "Default mapleader is \

" Move window
map sh <C-w>h
map sk <C-w>k
map sj <C-w>j
map sl <C-w>l

" Split window
nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w

" Delete a word backwards
nnoremap dw vb"_d

" Jump out the curly brakets and isnert after that
inoremap <C-]> <C-o>A

" Esc when state is insert mode
inoremap <C-[> <Esc>

" Delete all buffers
nmap ,d :bufdo bd

" Scroll setup
nnoremap <C-u> 10<C-u> 
nnoremap <C-d> 10<C-d>


" Plug 'svermeulen/vim-yoink'
" Show yanks history
map <space>y :Yanks 
map <space>cy :ClearYanks 

" Resize window
nmap <space><left> <C-w><
nmap <space><right> <C-w>>
nmap <space><up> <C-w>+
nmap <space><down> <C-w>-

" Save some strokes
" nnoremap ; :

" paste the last thing yanked, not deleted
nmap ,p "0p
nmap ,P "0P

" Turn off the hightlight
nmap <C-t> :nohlsearch<CR>

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
