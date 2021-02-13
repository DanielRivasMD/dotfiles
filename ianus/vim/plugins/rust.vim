"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => rust.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" format on save
let g:rustfmt_autosave = 1

" " Rust playground
" let g:rust_clip_command = 'pbcopy'

" mappings
autocmd FileType rust nmap <leader>r :RustRun<CR>
autocmd FileType rust nmap <leader>f :RustFmt<CR>
autocmd FileType rust nmap <leader>s :RustTest<CR>
autocmd FileType rust nmap <leader>ss :!cargo test<CR>
autocmd FileType rust nmap <leader>b :!cargo build<CR>
autocmd FileType rust nmap <leader>i :!cargo clippy<CR>
autocmd FileType rust nmap <leader>br :!cargo build --release<CR>
" autocmd FileType rust nmap <leader>d :!cargo doc<CR>
" autocmd FileType rust nmap <leader>dr :!cargo rustdoc<CR>
autocmd FileType rust nmap <leader>c :!cargo clean<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
