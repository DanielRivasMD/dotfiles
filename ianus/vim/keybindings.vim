
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





"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => miscellaneous
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""





nmap <leader>n :nohlsearch<CR>

" " execute current buffer
" nmap <leader>e :!%:p<CR>

" write buffer to...
nmap <leader>C :!cat %:p >

" Fast splits
nmap <leader>i :wincmd p<CR>
" toggle paste
nmap <leader>v :set paste!<CR>

" list directory
" highlight toggle

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
