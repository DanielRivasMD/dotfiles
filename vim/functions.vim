
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Movement between tabs OR buffers
nnoremap L :call MyNext()<CR>
nnoremap H :call MyPrev()<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" MyNext() and MyPrev(): Movement between tabs OR buffers
function! MyNext()
  if exists( '*tabpagenr' ) && tabpagenr('$') != 1
    " Tab support && tabs open
    normal gt
  else
    " No tab support, or no tabs open
    execute ":bnext"
  endif
endfunction

function! MyPrev()
  if exists( '*tabpagenr' ) && tabpagenr('$') != '1'
    " Tab support && tabs open
    normal gT
  else
    " No tab support, or no tabs open
    execute ":bprev"
  endif
endfunction

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
