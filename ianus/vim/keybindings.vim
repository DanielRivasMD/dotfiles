
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

imap <M-Left> <Esc>Bi
imap <M-Right> <Esc>Ea
nmap <M-Left> B
nmap <M-Right> E

" => vertical movement
imap <M-S-Up> <Esc>ggi
imap <M-S-Down> <Esc>Gi
nmap <M-S-Up> gg
nmap <M-S-Down> G
imap <M-Up> <Esc>{i
imap <M-Down> <Esc>}i
nmap <M-Up> {
nmap <M-Down> }



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => leader shortcuts
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

" exit insert mode with jj
imap jj <Esc>
vmap jj <Esc>

" enter to next line
nmap <CR> o

" remap undo
nmap U :redo<CR>
imap UU <Esc>U

" undo from insert mode
imap uu <Esc>u


" " execute current buffer
" nmap <leader>e :!%:p<CR>

" write buffer to...
nmap <leader>C :!cat %:p >

" toggle paste
nmap <leader>v :set paste!<CR>

" list directory
nmap <leader>l :!ls
nmap <leader>la :!ls -a

" highlight toggle
nmap <leader>? :nohlsearch<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" fast saving
nmap <leader>w :w!<CR>

map <leader>\ :NERDTreeToggle<CR>
map <leader>' :NERDTreeFocus<CR>
map <leader>/ :NERDTreeFind
" fast quit
nmap <leader>q :q!


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
