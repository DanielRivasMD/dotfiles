
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

" let g:which_key_position = 'botright'
" let g:which_key_position = 'topleft'
" let g:which_key_vertical = 1

" Change the colors if you want

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" Single mappings

" splits
let g:which_key_map['\'] = [ ':vsplit'                                 , 'vertical split' ]
let g:which_key_map['-'] = [ ':split'                                 , 'horizontal split' ]
let g:which_key_map['|'] = [ '<C-w>t<C-w>H'                                 , 'change vertical split' ]
let g:which_key_map['_'] = [ '<C-w>t<C-w>K'                                 , 'change horizontal split' ]
let g:which_key_map['o'] = [ ':only'                                 , 'one window' ]

let g:which_key_map['v'] = [ ':set paste!'                                 , 'toggle paste mode' ]
let g:which_key_map['h'] = [ ':nohlsearch'                                 , 'highlight toggle' ]
let g:which_key_map['w'] = [ ':w!'                                 , 'save' ]
" let g:which_key_map['q'] = [ ':q!'                                 , 'quit' ]
let g:which_key_map['s'] = [ ':wq!'                                 , 'save & exit' ]
let g:which_key_map['p'] = [ ':registers'                                 , 'registers' ]
let g:which_key_map['x'] = [ '<Plug>vem_delete_buffer-'                                 , 'close buffer' ]

" write buffer to...
nmap <leader>C :!cat %:p ><space>

nmap <leader>q :q!
vmap <leader>q :q!


" nmap <space>r :RnvimrToggle<CR>



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


let g:which_key_map['/'] = [ ':call NERDComment("n", "Toggle")'          , 'comment' ]

" nmap <leader>/ :call NERDComment("n", "Toggle")<CR>
vmap <leader>/ :call NERDComment("n", "Toggle")<CR>

" comments
let g:which_key_map.c = {
  \ 'name' : '+Comment',
  \ 'y': [':call NERDComment("n", "Yank")', 'yank '],
  \ 'a': [':call NERDComment("n", "Append")', 'append '],
  \ 'c': [':call NERDComment("n", "Comment")', 'comment'],
  \ 'u': [':call NERDComment("n", "Uncomment")', 'uncomment'],
\ }

" mappings
nmap <leader>cd :call NERDComment("n", "Yank")<CR>P
nmap <leader>ct :call NERDComment("n", "Append")<CR><space>TODO:<space>

vmap <leader>cd :call NERDComment("n", "Yank")<CR>P
vmap <leader>ct :call NERDComment("n", "Append")<CR><space>TODO:<space>


" git
 let g:which_key_map.g = {
   \ 'name' : '+Git',
   \ 'd' : [':Gdiffsplit!', 'diff'],
   \ '[' : [':diffget //2', 'get left'],
   \ ']' : [':diffget //3', 'get right'],
   \ 'u' : [':diffupdate', 'diff update'],
   \ 'p' : [':diffput', 'diff put'],
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




" " Single mappings
" let g:which_key_map['/'] = [ ':call Comment()'                                 , 'comment' ]
" let g:which_key_map['?'] = [ ':NvimTreeFindFile'                               , 'comment' ]
" let g:which_key_map['.'] = [ ':e $MYVIMRC'                                     , 'open init' ]
" let g:which_key_map[';'] = [ ':Commands'                                       , 'commands' ]
" let g:which_key_map['='] = [ '<C-W>='                                          , 'balance windows' ]
" let g:which_key_map['e'] = [ ':NvimTreeToggle'                                 , 'explorer' ]
" let g:which_key_map['h'] = [ '<C-W>s'                                          , 'split below']
" let g:which_key_map['n'] = [ ':let @/ = ""'                                    , 'no highlight' ]
" let g:which_key_map['o'] = [ ':RnvimrToggle'                                   , 'open' ]
" let g:which_key_map['p'] = [ ':Files'                                          , 'search files' ]
" " TODO fix this
" " let g:which_key_map['q'] = [ ':q'                                              , 'quit' ]
" let g:which_key_map['T'] = [ ':TSHighlightCapturesUnderCursor'                 , 'treesitter highlight' ]
" let g:which_key_map['u'] = [ ':UndotreeToggle'                                 , 'undo tree']
" let g:which_key_map['v'] = [ '<C-W>v'                                          , 'split right']
" let g:which_key_map['W'] = [ ':call WindowSwap#EasyWindowSwap()'               , 'move window' ]
" let g:which_key_map['z'] = [ 'Goyo'                                            , 'zen' ]

" " Group mappings
"
" " a is for actions
" let g:which_key_map.a = {
"       \ 'name' : '+actions' ,
"       \ 'c' : [':ColorizerToggle'        , 'colorizer'],
"       \ 'e' : [':CocCommand explorer'    , 'explorer'],
"       \ 'h' : [':let @/ = ""'            , 'remove search highlight'],
"       \ 'l' : [':Bracey'                 , 'start live server'],
"       \ 'L' : [':BraceyStop'             , 'stop live server'],
"       \ 'm' : [':MarkdownPreview'        , 'markdown preview'],
"       \ 'M' : [':MarkdownPreviewStop'    , 'markdown preview stop'],
"       \ 'n' : [':set nonumber!'          , 'line-numbers'],
"       \ 's' : [':s/\%V\(.*\)\%V/"\1"/'   , 'surround'],
"       \ 'r' : [':set norelativenumber!'  , 'relative line nums'],
"       \ 't' : [':FloatermToggle'         , 'terminal'],
"       \ 'v' : [':Codi'                   , 'virtual repl on'],
"       \ 'V' : [':Codi!'                  , 'virtual repl off'],
"       \ 'w' : [':StripWhitespace'        , 'strip whitespace'],
"       \ }
"
" " b is for buffer
" let g:which_key_map.b = {
"       \ 'name' : '+buffer' ,
"       \ '>' : [':BufferMoveNext'        , 'move next'],
"       \ '<' : [':BufferMovePrevious'    , 'move prev'],
"       \ '1' : [':BufferGoto 1'          , 'buffer 1'],
"       \ '2' : [':BufferGoto 2'          , 'buffer 2'],
"       \ '3' : [':BufferGoto 3'          , 'buffer 3'],
"       \ '4' : [':BufferGoto 4'          , 'buffer 4'],
"       \ '5' : [':BufferGoto 5'          , 'buffer 5'],
"       \ '6' : [':BufferGoto 6'          , 'buffer 6'],
"       \ '7' : [':BufferGoto 7'          , 'buffer 7'],
"       \ '8' : [':BufferGoto 8'          , 'buffer 8'],
"       \ '9' : [':BufferGoto 9'          , 'buffer 9'],
"       \ '0' : [':BufferGoto 0'          , 'buffer 0'],
"       \ 'b' : [':BufferPick'            , 'pick buffer'],
"       \ 'd' : [':Bdelete'               , 'delete-buffer'],
"       \ 'D' : [':BufferOrderByDirectory', 'order by directory'],
"       \ 'f' : ['bfirst'                 , 'first-buffer'],
"       \ 'l' : ['blast'                  , 'last buffer'],
"       \ 'L' : [':BufferOrderByLanguage' , 'order by language'],
"       \ 'n' : ['bnext'                  , 'next-buffer'],
"       \ 'p' : ['bprevious'              , 'previous-buffer'],
"       \ '?' : ['Buffers'                , 'fzf-buffer'],
"       \ }
"
" " d is for debug
" let g:which_key_map.d = {
"       \ 'name' : '+debug' ,
"       \ 'b' : ['<Plug>VimspectorToggleBreakpoint'              , 'breakpoint'],
"       \ 'B' : ['<Plug>VimspectorToggleConditionalBreakpoint'   , 'conditional breakpoint'],
"       \ 'c' : ['<Plug>VimspectorRunToCursor'                   , 'run to cursor'],
"       \ 'd' : ['<Plug>VimspectorContinue'                      , 'continue'],
"       \ 'f' : ['<Plug>VimspectorAddFunctionBreakpoint'         , 'function breakpoint'],
"       \ 'm' : [':MaximizerToggle'                              , 'maximize window'],
"       \ 'o' : ['<Plug>VimspectorStepOver'                      , 'step over'],
"       \ 'O' : ['<Plug>VimspectorStepOut'                       , 'step out'],
"       \ 'i' : ['<Plug>VimspectorStepInto'                      , 'step into'],
"       \ 'p' : ['<Plug>VimspectorPause'                         , 'pause'],
"       \ 'r' : ['<Plug>VimspectorRestart'                       , 'restart'],
"       \ 's' : ['<Plug>VimspectorStop'                          , 'stop'],
"       \ }
"
" " f is for find and replace
"       " \ 'f' : [':Farr'                     , 'file'],
" let g:which_key_map.f = {
"       \ 'name' : '+find & replace' ,
"       \ 'f' : [':Farr --source=vimgrep'    , 'file'],
"       \ 'p' : [':Farr --source=rgnvim'     , 'project'],
"       \ }
"
" " k is for task
" let g:which_key_map.k = {
"       \ 'name' : '+task' ,
"       \ 'c' : [':AsyncTask file-compile'      , 'compile file'],
"       \ 'b' : [':AsyncTask project-build'     , 'build project'],
"       \ 'e' : [':AsyncTaskEdit'               , 'edit local tasks'],
"       \ 'f' : [':AsyncTaskFzf'                , 'find task'],
"       \ 'g' : [':AsyncTaskEdit!'              , 'edit global tasks'],
"       \ 'h' : [':AsyncTaskList!'              , 'list hidden tasks'],
"       \ 'l' : [':CocList tasks'               , 'list tasks'],
"       \ 'm' : [':AsyncTaskMacro'              , 'macro help'],
"       \ 'o' : [':copen'                       , 'open task view'],
"       \ 'r' : [':AsyncTask file-run'          , 'run file'],
"       \ 'p' : [':AsyncTask project-run'       , 'run project'],
"       \ 'x' : [':cclose'                      , 'close task view'],
"       \ }
"       " \ 'l' : [':AsyncTaskList'               , 'list tasks'],
"
" " m is for mark
" let g:which_key_map.m = {
"       \ 'name' : '+mark' ,
"       \ 'c' : [':CocCommand bookmark.clearForCurrentFile', 'clear file'],
"       \ 'C' : [':CocCommand bookmark.clearForAllFiles', 'clear project'],
"       \ 'j' : [':CocCommand bookmark.next', 'next bookmark'],
"       \ 'k' : [':CocCommand bookmark.prev', 'prev bookmark'],
"       \ 't' : [':CocCommand bookmark.toggle', 'toggle bookmark'],
"       \ }
"       " CoC throws an error
"       " \ 'a' : [':CocCommand bookmark.annotate', 'annotate bookmark'],
"
"
" " s is for search powered by telescope
" let g:which_key_map.s = {
"       \ 'name' : '+search' ,
"       \ '.' : [':Telescope filetypes'                   , 'filetypes'],
"       \ ';' : [':Telescope commands'                    , 'commands'],
"       \ 'a' : [':Telescope lsp_code_actions'            , 'code_actions'],
"       \ 'A' : [':Telescope builtin'                     , 'all'],
"       \ 'b' : [':Telescope buffers'                     , 'buffers'],
"       \ 'B' : [':Telescope git_branches'                , 'git_branches'],
"       \ 'd' : [':Telescope lsp_document_diagnostics'    , 'document_diagnostics'],
"       \ 'D' : [':Telescope lsp_workspace_diagnostics'   , 'workspace_diagnostics'],
"       \ 'c' : [':Telescope git_bcommits'                , 'git_bcommits'],
"       \ 'C' : [':Telescope git_bcommits'                , 'git_bcommits'],
"       \ 'f' : [':Telescope find_files'                  , 'files'],
"       \ 'F' : [':Telescope git_files'                   , 'git_files'],
"       \ 'g' : [':Telescope tags'                        , 'tags'],
"       \ 'G' : [':Telescope current_buffer_tags'         , 'buffer_tags'],
"       \ 'h' : [':Telescope command_history'             , 'history'],
"       \ 'H' : [':Telescope help_tags'                   , 'help_tags'],
"       \ 'k' : [':Telescope keymaps'                     , 'keymaps'],
"       \ 'l' : [':Telescope loclist'                     , 'loclist'],
"       \ 'm' : [':Telescope marks'                       , 'marks'],
"       \ 'o' : [':Telescope vim_options'                 , 'vim_options'],
"       \ 'O' : [':Telescope oldfiles'                    , 'oldfiles'],
"       \ 'M' : [':Telescope man_pages'                   , 'man_pages'],
"       \ 'p' : [':Telescope fd'                          , 'fd'],
"       \ 'P' : [':Telescope spell_suggest'               , 'spell_suggest'],
"       \ 's' : [':Telescope git_status'                  , 'git_status'],
"       \ 'S' : [':Telescope grep_string'                 , 'grep_string'],
"       \ 't' : [':Telescope live_grep'                   , 'text'],
"       \ 'y' : [':Telescope symbols'                     , 'symbols'],
"       \ 'Y' : [':Telescope lsp_workspace_symbols'       , 'lsp_workspace_symbols'],
"       \ 'r' : [':Telescope registers'                   , 'registers'],
"       \ 'R' : [':Telescope reloader'                    , 'reloader'],
"       \ 'w' : [':Telescope file_browser'                , 'buf_fuz_find'],
"       \ 'u' : [':Telescope colorscheme'                 , 'colorschemes'],
"       \ 'z' : [':Telescope current_buffer_fuzzy_find'   , 'buf_fuz_find'],
"       \ }
"
" let g:which_key_map.S = {
"       \ 'name' : '+Session' ,
"       \ 'c' : [':SClose'          , 'Close Session']  ,
"       \ 'd' : [':SDelete'         , 'Delete Session'] ,
"       \ 'l' : [':SLoad'           , 'Load Session']     ,
"       \ 's' : [':Startify'        , 'Start Page']     ,
"       \ 'S' : [':SSave'           , 'Save Session']   ,
"       \ }
"
" " g is for git
" let g:which_key_map.g = {
"       \ 'name' : '+git' ,
"       \ 'a' : [':Git add .'                        , 'add all'],
"       \ 'A' : [':CocCommand fzf-preview.GitStatus' , 'actions'],
"       \ 'b' : [':Git blame'                        , 'blame'],
"       \ 'B' : [':GBrowse'                          , 'browse'],
"       \ 'c' : [':Git commit'                       , 'commit'],
"       \ 'd' : [':Git diff'                         , 'diff'],
"       \ 'D' : [':Gdiffsplit'                       , 'diff split'],
"       \ 'g' : [':GGrep'                            , 'git grep'],
"       \ 'G' : [':Gstatus'                          , 'status'],
"       \ 'h' : [':GitGutterLineHighlightsToggle'    , 'highlight hunks'],
"       \ 'H' : ['<Plug>(GitGutterPreviewHunk)'      , 'preview hunk'],
"       \ 'i' : [':Gist -b'                          , 'post gist'],
"       \ 'j' : ['<Plug>(GitGutterNextHunk)'         , 'next hunk'],
"       \ 'k' : ['<Plug>(GitGutterPrevHunk)'         , 'prev hunk'],
"       \ 'l' : [':Git log'                          , 'log'],
"       \ 'm' : ['<Plug>(git-messenger)'             , 'message'],
"       \ 'p' : [':Git push'                         , 'push'],
"       \ 'P' : [':Git pull'                         , 'pull'],
"       \ 'r' : [':GRemove'                          , 'remove'],
"       \ 's' : ['<Plug>(GitGutterStageHunk)'        , 'stage hunk'],
"       \ 'S' : [':CocCommand fzf-preview.GitStatus' , 'status'],
"       \ 't' : [':GitGutterSignsToggle'             , 'toggle signs'],
"       \ 'u' : ['<Plug>(GitGutterUndoHunk)'         , 'undo hunk'],
"       \ 'v' : [':GV'                               , 'view commits'],
"       \ 'V' : [':GV!'                              , 'view buffer commits'],
"       \ }
"       " \ 'A' : [':Git add %'                        , 'add current'],
"       " \ 'S' : [':!git status'                      , 'status'],
" "
" "
" "
"
" let g:which_key_map.G = {
"       \ 'name' : '+gist' ,
"       \ 'a' : [':Gist -a'                          , 'post gist anon'],
"       \ 'b' : [':Gist -b'                          , 'post gist browser'],
"       \ 'd' : [':Gist -d'                          , 'delete gist'],
"       \ 'e' : [':Gist -e'                          , 'edit gist'],
"       \ 'l' : [':Gist -l'                          , 'list public gists'],
"       \ 's' : [':Gist -ls'                         , 'list starred gists'],
"       \ 'm' : [':Gist -m'                          , 'post gist all buffers'],
"       \ 'p' : [':Gist -P'                          , 'post public gist '],
"       \ 'P' : [':Gist -p'                          , 'post private gist '],
"       \ }
"
" " l is for language server protocol
" let g:which_key_map.l = {
"       \ 'name' : '+lsp' ,
"       \ 'a' : [':Lspsaga code_action'                , 'code action'],
"       \ 'A' : [':Lspsaga range_code_action'          , 'selected action'],
"       \ 'd' : [':LspDefinition'                      , 'definition'],
"       \ 'D' : [':LspDeclaration'                     , 'workspace_diagnostics'],
"       \ 'f' : [':LspFormatting'                      , 'format'],
"       \ 'h' : [':Lspsaga hover_doc'                  , 'hover_doc'],
"       \ 'H' : [':Lspsaga signature_help'             , 'signature_help'],
"       \ 'K' : [':LspHover'                           , 'hover'],
"       \ 'i' : [':LspImplementation'                  , 'lsp_info'],
"       \ 'I' : [':LspInfo'                            , 'lsp_info'],
"       \ 'l' : [':Lspsaga lsp_finder'                 , 'lsp_finder'],
"       \ 'L' : [':Lspsaga show_line_diagnostics'      , 'line_diagnostics'],
"       \ 'n' : [':Lspsaga diagnostic_jump_next'       , 'next_diagnostic'],
"       \ 'o' : [':Vista!!'                            , 'outline'],
"       \ 'p' : [':Lspsaga diagnostic_jump_prev'       , 'prev diagnostic'],
"       \ 'q' : [':Lspsaga code_action'                , 'quickfix'],
"       \ 'r' : [':LspReferences'                      , 'references'],
"       \ 'R' : [':LspRename'                          , 'rename'],
"       \ 'T' : [':LspTypeDefinition'                  , 'type defintion'],
"       \ 'x' : [':cclose'                             , 'close quickfix'],
"       \ 'y' : [':LspDocumentSymbol'                  , 'document symbols'],
"       \ 'Y' : [':LspWorkspaceSymbol'                 , 'workspace symbols'],
"       \ }
"
" " t is for terminal
" let g:which_key_map.t = {
"       \ 'name' : '+terminal' ,
"       \ ';' : [':FloatermNew --wintype=normal --height=6'       , 'terminal'],
"       \ 'f' : [':FloatermNew fzf'                               , 'fzf'],
"       \ 'g' : [':FloatermNew lazygit'                           , 'git'],
"       \ 'd' : [':FloatermNew lazydocker'                        , 'docker'],
"       \ 'n' : [':FloatermNew node'                              , 'node'],
"       \ 'N' : [':FloatermNew nnn'                               , 'nnn'],
"       \ 'p' : [':FloatermNew python'                            , 'python'],
"       \ 'm' : [':FloatermNew lazynpm'                           , 'npm'],
"       \ 'r' : [':FloatermNew ranger'                            , 'ranger'],
"       \ 't' : [':FloatermToggle'                                , 'toggle'],
"       \ 'y' : [':FloatermNew ytop'                              , 'ytop'],
"       \ 'u' : [':FloatermNew ncdu'                              , 'ncdu'],
"       \ }
"
" " w is for wiki
" " let g:which_key_map.w = {
" "       \ 'name' : '+wiki' ,
" "       \ 'w' : ['<Plug>VimwikiIndex'                              , 'ncdu'],
" "       \ 'n' : ['<plug>(wiki-open)'                              , 'ncdu'],
" "       \ 'j' : ['<plug>(wiki-journal)'                              , 'ncdu'],
" "       \ 'R' : ['<plug>(wiki-reload)'                              , 'ncdu'],
" "       \ 'c' : ['<plug>(wiki-code-run)'                              , 'ncdu'],
" "       \ 'b' : ['<plug>(wiki-graph-find-backlinks)'                              , 'ncdu'],
" "       \ 'g' : ['<plug>(wiki-graph-in)'                              , 'ncdu'],
" "       \ 'G' : ['<plug>(wiki-graph-out)'                              , 'ncdu'],
" "       \ 'l' : ['<plug>(wiki-link-toggle)'                              , 'ncdu'],
" "       \ 'd' : ['<plug>(wiki-page-delete)'                              , 'ncdu'],
" "       \ 'r' : ['<plug>(wiki-page-rename)'                              , 'ncdu'],
" "       \ 't' : ['<plug>(wiki-page-toc)'                              , 'ncdu'],
" "       \ 'T' : ['<plug>(wiki-page-toc-local)'                              , 'ncdu'],
" "       \ 'e' : ['<plug>(wiki-export)'                              , 'ncdu'],
" "       \ 'u' : ['<plug>(wiki-list-uniq)'                              , 'ncdu'],
" "       \ 'U' : ['<plug>(wiki-list-uniq-local)'                              , 'ncdu'],
" "       \ }

" Global
" <Plug>VimwikiIndex
" <Plug>VimwikiTabIndex
" <Plug>VimwikiUISelect
" <Plug>VimwikiDiaryIndex
" <Plug>VimwikiMakeDiaryNote
" <Plug>VimwikiTabMakeDiaryNote
" <Plug>VimwikiMakeYesterdayDiaryNote
" <Plug>VimwikiMakeTomorrowDiaryNote
"
" " Local
" <Plug>Vimwiki2HTML
" <Plug>Vimwiki2HTMLBrowse
" <Plug>VimwikiDiaryGenerateLinks
" <Plug>VimwikiFollowLink
" <Plug>VimwikiSplitLink
" <Plug>VimwikiVSplitLink
" <Plug>VimwikiTabnewLink
" <Plug>VimwikiGoBackLink
" <Plug>VimwikiNextLink
" <Plug>VimwikiPrevLink
" <Plug>VimwikiGoto
" <Plug>VimwikiDeleteLink
" <Plug>VimwikiRenameLink
" <Plug>VimwikiAddHeaderLevel

" Register which key map
call which_key#register('<Space>', "g:which_key_map")


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
