
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" sections:
"
"    -> movement
"    -> line manipulation
"    -> splits and tabbed files
"    -> remapping
"    -> tabbing
"
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => movement
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


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => line manipulation
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" move lines
nmap J ddp
nmap K ddkP
imap <C-j> <Esc>ddpi
imap <C-k> <Esc>ddkPi

imap <C-l> <Esc>V
vmap <C-a> <Esc>ggVG

" duplicate line
nmap kk yyp
imap kk <Esc>yypi


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => splits and tabbed files
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" remap splits navigation to just c + hjkl
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => remapping
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" exit insert mode with jj
imap jj <Esc>
vmap jj <Esc>

" remap undo
nmap U :redo<CR>
imap UU <Esc>U

" undo from insert mode
imap uu <Esc>u


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => tabbing
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better tabbing
vnoremap < <gv
vnoremap > >gv


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""