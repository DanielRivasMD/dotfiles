"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => ctrlp.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" invoke
let g:ctrlp_map = "<leader>t"

" default command
let g:ctrlp_cmd = 'CtrlP'

" search by file name (as opposed to full path)
let g:ctrlp_by_filename = 1

" set directory to .git
let g:ctrlp_working_path_mode = 'r'

" ignore gitignore files
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" list hidden files
let g:ctrlp_show_hidden = 1

" follow symlinks
let g:ctrlp_follow_symlinks = 1

let g:ctrlp_prompt_mappings = {
\ 'PrtDeleteWord()':      ['<c-w>'],
\ 'PrtClear()':           ['<c-u>'],
\ 'PrtHistory(-1)':       ['<c-j>'],
\ 'PrtHistory(1)':        ['<c-k>'],
\ 'AcceptSelection("e")': ['<cr>'],
\ 'AcceptSelection("h")': ['<c-i>'],
\ 'AcceptSelection("t")': ['<c-t>'],
\ 'AcceptSelection("v")': ['<c-v>'],
\ 'ToggleFocus()':        ['<s-tab>'],
\ 'ToggleRegex()':        ['<c-r>'],
\ 'ToggleByFname()':      ['<c-d>'],
\ 'ToggleType(1)':        ['<c-f>'],
\ 'ToggleType(-1)':       ['<c-b>'],
\ 'PrtExpandDir()':       ['<tab>'],
\ 'PrtClearCache()':      ['<c-x>'],
\ 'PrtDeleteEnt()':       ['<c-e>'],
\ 'CreateNewFile()':      ['<c-n>'],
\ 'MarkToOpen()':         ['<c-a>'],
\ 'OpenMulti()':          ['<c-o>'],
\ 'PrtExit()':            ['<esc>'],
\ }


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
