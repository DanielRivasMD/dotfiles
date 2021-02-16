"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NERDCommenter
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" create default mappings
let g:NERDCreateDefaultMappings = 0

" add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" " set a language to use its alternate delimiters by default
" let g:NERDAltDelims_java = 1

" " add your own custom formats or override the defaults
" let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1

nmap <leader>/ :call NERDComment("n", "Toggle")<CR>
nmap <leader>/y :call NERDComment("n", "Yank")<CR>
nmap <leader>// :call NERDComment("n", "Append")<CR>
nmap <leader>/d :call NERDComment("n", "Yank")<CR>p
nmap <leader>/c :call NERDComment("n", "Comment")<CR>
nmap <leader>/u :call NERDComment("n", "Uncomment")<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
