
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"  => General

" => Horizontal Movement
inoremap <M-S-Left> <Esc>I
inoremap <M-S-Right> <Esc>A
nnoremap <M-S-Left> 0
nnoremap <M-S-Right> $

inoremap <M-Left> <Esc>Bi
inoremap <M-Right> <Esc>Ea
nnoremap <M-Left> B
nnoremap <M-Right> E

" => Vertical Movement
inoremap <M-S-Up> <Esc>ggi
inoremap <M-S-Down> <Esc>Gi
nnoremap <M-S-Up> gg
nnoremap <M-S-Down> G

inoremap <M-Up> <Esc>{i
inoremap <M-Down> <Esc>}i
nnoremap <M-Up> {
nnoremap <M-Down> }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Leader shortcuts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Execute current buffer
nmap <leader>e :!%:p<CR>

" Write buffer to...
nmap <leader>p :!cat %:p >

" List directory
nmap <leader>l :!exa

" Highlight toggle
nmap <leader>n :nohlsearch<CR>

" Fast saving
nmap <leader>w :w!<CR>

" Fast quit
nmap <leader>q :q!

" Fast splits
nmap <leader>i :wincmd p<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

map <leader>\ :NERDTreeToggle<CR>
map <leader>' :NERDTreeFocus<CR>
map <leader>/ :NERDTreeFind

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
