" Change the map leader to the ,
let mapleader=" " "Default mapleader is \


" nnoremap <C-k> :cnext<CR>zz
" nnoremap <C-j> :cprev<CR>zz
" nnoremap <leader>k :lnext<CR>zz
" nnoremap <leader>j :lprev<CR>zz
" nnoremap <C-q> :call ToggleQFList(1)<CR>
" nnoremap <leader>q :call ToggleQFList(0)<CR>

" let g:the_primeagen_qf_l = 0
" let g:the_primeagen_qf_g = 0

" fun! ToggleQFList(global)
"     if a:global
"         if g:the_primeagen_qf_g == 1
"             let g:the_primeagen_qf_g = 0
"             cclose
"         else
"             let g:the_primeagen_qf_g = 1
"             copen
"         end
"     else
"         if g:the_primeagen_qf_l == 1
"             let g:the_primeagen_qf_l = 0
"             lclose
"         else
"             let g:the_primeagen_qf_l = 1
"             lopen
"         end
"     endif
" endfun

" Move window
map sh <C-w>h
map sk <C-w>k
map sj <C-w>j
map sl <C-w>l

" better substitute 
nnoremap <leader>z :%s/<C-R><C-W>/<C-R>0/g<CR>

" turn spelling off or on
nnoremap ,s :setlocal spell!<Cr>

" Split window
nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w

" Delete a word backwards and do not yank
nnoremap dw vb"_d

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

nnoremap <leader>s :set scroll=10<Cr>

" Jump out the curly brakets and isnert after that
" inoremap <C-]> <C-o>A
inoremap <silent> <c-l> <C-o>A

" Esc when state is insert mode
inoremap <C-[> <Esc>

" Move the selected line
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Close all buffers
nmap <S-q> :bufdo bd<CR>

" Scroll setup
" nnoremap <C-u> 10<C-u>
" nnoremap <C-d> 10<C-d>

nmap = :res +5<CR> " increase pane by 2
nmap - :res -5<CR> " decrease pane by 2
nmap ] :vertical res +5<CR> " vertical increase pane by 2
nmap [ :vertical res -5<CR> " vertical decrease pane by 2

" paste the last thing yanked, not deleted
" nmap ,p "0p
" nmap ,P "0P

" Turn off the hightlight
nnoremap <Esc><Esc> :nohlsearch<CR>

" Copy whole text in file
nnoremap ya :%y+<CR>

" Select all
" nmap <C-a> gg<S-v>G
nmap ,a gg<S-v>G

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


"-----------------------------
" Tabs

" Open current directory
nmap te :tabedit
nmap <S-Tab> :tabprev<Return>
nmap <Tab> :tabnext<Return>

"------------------------------
