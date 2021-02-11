"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-startify
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" display NERDTree bookmarks as a separate list
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" read ~/.NERDTreeBookmarks file and takes its second column
function! s:nerdtreeBookmarks()
  let bookmarks = systemlist("cut -d' ' -f 2- ~/.NERDTreeBookmarks")
  let bookmarks = bookmarks[0:-2] " Slices an empty last line
  return map(bookmarks, "{'line': v:val, 'path': v:val}")
endfunction

let g:startify_lists = [
\ { 'type': function('s:nerdtreeBookmarks'), 'header': ['   NERDTree Bookmarks']}
\]

" show modified and untracked git files
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" returns all modified files of the current git repo
" `2>/dev/null` makes the command fail quietly, so that when we are not
" in a git repo, the list will be empty
function! s:gitModified()
    let files = systemlist('git ls-files -m 2>/dev/null')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction

" same as above, but show untracked files, honouring .gitignore
function! s:gitUntracked()
    let files = systemlist('git ls-files -o --exclude-standard 2>/dev/null')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction

let g:startify_lists = [
\ { 'type': 'files',     'header': ['   MRU']            },
\ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
\ { 'type': 'sessions',  'header': ['   Sessions']       },
\ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
\ { 'type': function('s:gitModified'),  'header': ['   git modified']},
\ { 'type': function('s:gitUntracked'), 'header': ['   git untracked']},
\ { 'type': 'commands',  'header': ['   Commands']       },
\ ]


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
