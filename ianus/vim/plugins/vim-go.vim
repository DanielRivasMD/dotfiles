"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-go
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

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

" mappings
autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <leader>f <Plug>(go-fmt)
autocmd FileType go nmap <leader>s <Plug>(go-test-func)
autocmd FileType go nmap <leader>ss <Plug>(go-test)
autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>i :GoImport<space>
autocmd FileType go nmap <leader>is <Plug>(go-imports)
autocmd FileType go nmap <leader>n :GoDef<CR>
autocmd FileType go nmap <leader>d :GoDoc<CR>
autocmd FileType go nmap <leader>a :GoAlternate<CR>
autocmd FileType go nmap <leader>a\ :GoAlternateVSplit<CR>
autocmd FileType go nmap <leader>a- :GoAlternateSplit<CR>

" functions
autocmd Filetype go command! -bang GoAlternateVSplit call go#alternate#Switch(<bang>0, 'vsplit')
autocmd Filetype go command! -bang GoAlternateSplit call go#alternate#Switch(<bang>0, 'split')


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
