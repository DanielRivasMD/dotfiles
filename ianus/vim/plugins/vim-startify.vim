"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-startify
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:startify_custom_header = [
        \ '        _   ___    ________          __   ',
        \ '       / | / / |  / / ____/___  ____/ /__ ',
        \ '      /  |/ /| | / / /   / __ \/ __  / _ \',
        \ '     / /|  / | |/ / /___/ /_/ / /_/ /  __/',
        \ '    /_/ |_/  |___/\____/\____/\__,_/\___/ ',
        \]

let g:startify_session_dir = '~/.vim/session'

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

let g:startify_session_autoload = 1
let g:startify_session_delete_buffers = 1
let g:startify_change_to_vcs_root = 1
let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1

let g:webdevicons_enable_startify = 1

function! StartifyEntryFormat()
    return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
endfunction

let g:startify_bookmarks = [
\ { 'g': '/Users/drivas/Factorem/WebSurf/Archive/Notes/github.md' },
\ { 'k': '/Users/drivas/.archive/cerberus/khal/khalNew.sh' },
\ { 'z': '~/.zshrc' },
\ ]

let g:startify_enable_special = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
