""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-go
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" disable default mappings
let g:go_def_mapping_enabled = 0
let g:go_doc_keywordprg_enabled = 0
let g:go_textobj_enabled = 0

" " error list
" let g:go_list_type = "quickfix"

" " do not show errors in error list
" let g:go_fmt_fail_silently = 1

" syntax highlight
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1

" imports
let g:go_fmt_command = "goimports"

" definitions
let g:go_def_mode = 'godef'

" declarations
let g:go_decls_includes = "func,type"

" linters
let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']
let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = ['vet', 'golint']
let g:go_metalinter_deadline = "5s"


" functions
autocmd Filetype go command! -bang GoAlternateVSplit call go#alternate#Switch(<bang>0, 'vsplit')
autocmd Filetype go command! -bang GoAlternateSplit call go#alternate#Switch(<bang>0, 'split')


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
