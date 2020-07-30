
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

" Delete all registers
function! ClearRegisters()
   redir => l:register_out
   silent register
   redir end
   let l:register_list = split(l:register_out, '\n')
   call remove(l:register_list, 0) " remove header (-- Registers --)
   call map(l:register_list, "substitute(v:val, '^.\\(.\\).*', '\\1', '')")
   call filter(l:register_list, 'v:val !~ "[%#=.:]"') " skip readonly registers
   for elem in l:register_list
      execute 'let @'.elem.'= ""'
   endfor
endfunction

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
