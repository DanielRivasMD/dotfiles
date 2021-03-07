
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" sections:
"
"    -> movement
"    -> splits and tabbed files
"    -> miscellaneous
"
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  => movement
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" => horizontal movement
imap <M-S-Left> <Esc>I
imap <M-S-Right> <Esc>A
nmap <M-S-Left> 0
nmap <M-S-Right> $
vmap <M-S-Left> 0
vmap <M-S-Right> $

imap <M-Left> <Esc>Bi
imap <M-Right> <Esc>Ea
nmap <M-Left> B
nmap <M-Right> E
vmap <M-Left> B
vmap <M-Right> E

" => vertical movement
imap <M-S-Up> <Esc>ggi
imap <M-S-Down> <Esc>Gi
nmap <M-S-Up> gg
nmap <M-S-Down> G
vmap <M-S-Up> gg
vmap <M-S-Down> G

imap <M-Up> <Esc>{i
imap <M-Down> <Esc>}i
nmap <M-Up> {
nmap <M-Down> }
vmap <M-Up> {
vmap <M-Down> }

" move lines
nmap JJ ddp
nmap KK ddkP
imap JJ <Esc>ddpi
imap KK <Esc>ddkPi

imap vv <Esc>V
vmap kk <Esc>ggVG

" horizontal selection
imap <S-Left> <Esc>vB
imap <C-S-Left> <Esc>v0
nmap <S-Left> vB
nmap <C-S-Left> v0
vmap <S-Left> B
vmap <C-S-Left> 0

imap <S-Right> <Esc>vE
imap <C-S-Right> <Esc>v$
nmap <S-Right> vE
nmap <C-S-Right> v$
vmap <S-Right> E
vmap <C-S-Right> $

" vertical selection
imap <S-Down> <Esc>v}
nmap <S-Down> v}
vmap <S-Down> }

imap <S-Up> <Esc>v{
nmap <S-Up> v{
vmap <S-Up> {

" duplicate line
nmap kk yyp
imap kk <Esc>yypi


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => splits and tabbed files
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" fast split vertical
nmap <leader>\ :vsplit<CR>

" fast split horizontal
nmap <leader>- :split<CR>

" remap splits navigation to just c + hjkl
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" change 2 split windows from vert to horiz or horiz to vert
map <leader>o\ <C-w>t<C-w>H
map <leader>o- <C-w>t<C-w>K


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => miscellaneous
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" system clipboard
imap <C-v> <ESC>"+pa
nmap <C-c> "+yy
vmap <C-c> "+y

" exit insert mode with jj
imap jj <Esc>
vmap jj <Esc>

" remap undo
nmap U :redo<CR>
imap UU <Esc>U

" undo from insert mode
imap uu <Esc>u

" write buffer to...
nmap <leader>C :!cat %:p >

" toggle paste
nmap <leader>v :set paste!<CR>

" list directory
nmap <leader>l :!ls
nmap <leader>la :!ls -a

" highlight toggle
nmap <leader>? :nohlsearch<CR>

" fast saving
nmap <leader>w :w!<CR>

" fast quit
nmap <leader>q :q!

" fast close buffer
nmap <leader>x :bdelete<CR>

" registers
nmap <leader>p :registers<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
