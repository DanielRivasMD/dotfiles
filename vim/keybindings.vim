
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
inoremap <T-S-Left> <Esc>I
inoremap <T-S-Right> <Esc>A
nnoremap <T-S-Left> 0
nnoremap <T-S-Right> $

inoremap <S-Left> <Esc>Bi
inoremap <S-Right> <Esc>Ea
nnoremap <S-Left> B
nnoremap <S-Right> E

" => Vertical Movement
inoremap <T-S-Up> <Esc>ggi
inoremap <T-S-Down> <Esc>Gi
nnoremap <T-S-Up> gg
nnoremap <T-S-Down> G

inoremap <S-Up> <Esc>{i
inoremap <S-Down> <Esc>}i
nnoremap <S-Up> {
nnoremap <S-Down> }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

map <leader>\ :NERDTreeToggle<CR>
map <leader>' :NERDTreeFocus<CR>
map <leader>/ :NERDTreeFind

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
