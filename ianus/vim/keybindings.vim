
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


" Move lines
inoremap <C-M-Down> <Esc>ddpi
inoremap <C-M-Up> <Esc>ddkPi
nnoremap <C-M-Down> ddp
nnoremap <C-M-Up> ddkP



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Leader shortcuts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Execute current buffer
nmap <leader>e :!%:p<CR>

" Write buffer to...
nmap <leader>P :!cat %:p >

" Toggle paste
nmap <leader>p :set paste!<CR>

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
