
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

 " Leader Key Maps
let @s = 'veS"'

" Timeout
let g:which_key_timeout = 100

let g:which_key_display_names = {'<CR>': '↵', '<TAB>': '⇆'}


" set leader key
let g:mapleader = "\<Space>"

" Map leader to which_key
nnoremap <silent> <leader> :silent <c-u> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}

" Define a separator
let g:which_key_sep = '→'
" set timeoutlen=100

" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0
let g:which_key_max_size = 0

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" Single mappings

" splits
let g:which_key_map['\'] = [ ':vsplit'      , 'vertical split' ]
let g:which_key_map['-'] = [ ':split'       , 'horizontal split' ]
let g:which_key_map['|'] = [ '<C-w>t<C-w>H' , 'change vertical split' ]
let g:which_key_map['_'] = [ '<C-w>t<C-w>K' , 'change horizontal split' ]
let g:which_key_map['o'] = [ ':only'        , 'one window' ]
let g:which_key_map['v'] = [ ':set paste!'  , 'toggle paste mode' ]
let g:which_key_map['h'] = [ ':nohlsearch'  , 'highlight toggle' ]
let g:which_key_map['w'] = [ ':w!'          , 'save' ]
"let g:which_key_map['q'] = [ ':q!'         , 'quit' ]
let g:which_key_map['s'] = [ ':wq!'         , 'save & exit' ]
let g:which_key_map['p'] = [ ':registers'   , 'registers' ]
let g:which_key_map['x'] = [ ':bdelete'     , 'close buffer' ]
let g:which_key_map['S'] = [ ':Startify'    , 'Startify' ]

" write buffer to...
nmap <leader>C :!cat %:p ><space>

nmap <leader>q :q!
vmap <leader>q :q!


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


let g:which_key_map['/'] = [ ':call NERDComment("n", "Toggle")', 'comment' ]

vmap <leader>/ :call NERDComment("n", "Toggle")<CR>

" comments
let g:which_key_map.c = {
  \ 'name' : '+Comment',
  \ 'y': [':call NERDComment("n", "Yank") '      , 'yank '],
  \ 'a': [':call NERDComment("n", "Append") '    , 'append '],
  \ 'c': [':call NERDComment("n", "Comment") '   , 'comment'],
  \ 'u': [':call NERDComment("n", "Uncomment") ' , 'uncomment'],
\ }

nmap <leader>cd :call NERDComment("n", "Yank")<CR>P
nmap <leader>ct :call NERDComment("n", "Append")<CR><space>TODO:<space>
nmap <leader>cb :call NERDComment("n", "Append")<CR><space>BUG:<space>

vmap <leader>cd :call NERDComment("n", "Yank")<CR>P
vmap <leader>ct :call NERDComment("n", "Append")<CR><space>TODO:<space>
vmap <leader>cb :call NERDComment("n", "Append")<CR><space>BUG:<space>


" git
 let g:which_key_map.g = {
   \ 'name' : '+Git',
   \ 'a' : [':Git add %'            ,  'add current file'],
   \ 'A' : [':Git commit ---ammend' ,  'add commit ammed'],
   \ 'c' : [':Git commit'           ,  'add commit'],
   \ 'd' : [':Gvdiffsplit!'         ,  'diff'],
   \ '[' : [':diffget //2'          ,  'get left'],
   \ ']' : [':diffget //3'          ,  'get right'],
   \ 'u' : [':diffupdate'           ,  'diff update'],
   \ 'p' : [':Git ps'               ,  'push remote'],
   \ 'P' : [':diffput'              ,  'diff put'],
   \ 's' : [':Gstatus'              ,  'status'],
 \ }

nmap <leader>gh <Plug>(GitGutterStageHunk)
nmap <leader>gl <Plug>(GitGutterUndoHunk)
nmap <leader>gm <Plug>(GitGutterPreviewHunk)
nmap <leader>gj <Plug>(GitGutterNextHunk)
nmap <leader>gk <Plug>(GitGutterPrevHunk)

" golang
let g:which_key_map.G = {
  \ 'name' : '+Go',
\ }

autocmd FileType go nmap <leader>Gr  <Plug>(go-run)
autocmd FileType go nmap <leader>Gf <Plug>(go-fmt)
autocmd FileType go nmap <leader>Gt <Plug>(go-test-func)
autocmd FileType go nmap <leader>Gs <Plug>(go-test)
autocmd FileType go nmap <leader>Gb  <Plug>(go-build)
autocmd FileType go nmap <leader>Gi :GoImport<space>
autocmd FileType go nmap <leader>GI <Plug>(go-imports)
autocmd FileType go nmap <leader>Gn :GoDef<CR>
autocmd FileType go nmap <leader>Gd :GoDoc<CR>
autocmd FileType go nmap <leader>Ga :GoAlternate<CR>
autocmd FileType go nmap <leader>G\ :GoAlternateVSplit<CR>
autocmd FileType go nmap <leader>G- :GoAlternateSplit<CR>

" rust
let g:which_key_map.R = {
  \ 'name' : '+Rust',
\ }

autocmd FileType rust nmap <leader>Rr :RustRun<CR>
autocmd FileType rust nmap <leader>Rf :RustFmt<CR>
autocmd FileType rust nmap <leader>Rs :RustTest<CR>
autocmd FileType rust nmap <leader>Rt :!cargo test<CR>
autocmd FileType rust nmap <leader>Rb :!cargo build<CR>
autocmd FileType rust nmap <leader>Ri :!cargo clippy<CR>
autocmd FileType rust nmap <leader>RB :!cargo build --release<CR>
autocmd FileType rust nmap <leader>Rd :!cargo doc<CR>
autocmd FileType rust nmap <leader>RD :!cargo rustdoc<CR>
autocmd FileType rust nmap <leader>RC :!cargo clean<CR>

" Register which key map
call which_key#register('<Space>', "g:which_key_map")


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
