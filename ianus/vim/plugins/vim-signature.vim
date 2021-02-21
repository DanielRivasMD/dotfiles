"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-signature
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" mapping
nmap m? :SignatureToggleSigns<CR>

" default mapping
" mx           toggle mark 'x' and display it in the leftmost column
" dmx          remove mark 'x' where x is a-za-z

" m,           place the next available mark
" m.           if no mark on line, place the next available mark. otherwise, remove (first) existing mark.
" m-           delete all marks from the current line
" m<space>     delete all marks from the current buffer
" ]`           jump to next mark
" [`           jump to prev mark
" ]'           jump to start of next line containing a mark
" ['           jump to start of prev line containing a mark
" `]           jump by alphabetical order to next mark
" `[           jump by alphabetical order to prev mark
" ']           jump by alphabetical order to start of next line having a mark
" '[           jump by alphabetical order to start of prev line having a mark
" m/           open location list and display marks from current buffer

" m[0-9]       toggle the corresponding marker !@#$%^&*()
" m<S-[0-9]>   remove all markers of the same type
" ]-           jump to next line having a marker of the same type
" [-           jump to prev line having a marker of the same type
" ]=           jump to next line having a marker of any type
" [=           jump to prev line having a marker of any type
" m?           open location list and display markers from current buffer
" m<BS>        remove all markers


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
