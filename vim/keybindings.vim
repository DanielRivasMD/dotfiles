
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"  => General

inoremap , ,<space>

inoremap ∞ <space>~<space>

inoremap ≠ <space>=<space>
inoremap « <space>==<space>

inoremap – <space>-<space>
inoremap º <space>+<space>
inoremap ª <space>/<space>
inoremap • <space>*<space>

inoremap ≤ <space><<space>
inoremap “ <space><=<space>
inoremap ≥ <space>><space>
inoremap ‘ <space>>=<space>

" => Awk

" => Bash

" => Go

inoremap … <space>:=<space>

" => Julia

inoremap — <space>.-<space>
inoremap ‚ <space>.+<space>
inoremap · <space>./<space>
inoremap ° <space>.*<space>

inoremap ¯ <space>.<<space>
inoremap ” <space>.<=<space>
inoremap ˘ <space>.><space>
inoremap ’ <space>.>=<space>

inoremap ± <space>.=<space>
inoremap » <space>.==<space>
inoremap + <space>===<space>

inoremap Ú <space>\|><space>

" => Markdown

" => R

inoremap ÷ <space><-<space>
inoremap ¿ <space><<-<space>

inoremap ¶ <space>%>%<space>
inoremap ‡ <space>%<>%<space>
inoremap § <space>%$%<space>
inoremap ﬂ <space>%T>%<space>
inoremap ﬁ <space>%in%<space>

" => Rust

inoremap æ <space>=><space>
inoremap Æ <space>-><space>

" => Horizontal Movement
inoremap <M-S-Left> <Esc>I
inoremap <M-S-Right> <Esc>A
nnoremap <M-S-Left> 0
nnoremap <M-S-Right> $

inoremap <M-Left> <Esc>Bi
inoremap <M-Right> <Esc>Ea
nnoremap <M-Left> B
nnoremap <M-Right> E

" => Vertical Movement
inoremap <M-S-Up> <Esc>ggi
inoremap <M-S-Down> <Esc>Gi
nnoremap <M-S-Up> gg
nnoremap <M-S-Down> G

inoremap <M-Up> <Esc>{i
inoremap <M-Down> <Esc>}i
nnoremap <M-Up> {
nnoremap <M-Down> }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

map <leader>\ :NERDTreeToggle<CR>
map <leader>' :NERDTreeFocus<CR>
map <leader>/ :NERDTreeFind

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
