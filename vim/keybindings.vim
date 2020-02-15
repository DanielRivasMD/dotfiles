
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"  => General
inoremap , ,<space>
inoremap ÷ <space><-<space>
inoremap ¿ <space><<-<space>
inoremap æ <space>=><space>
inoremap Æ <space>-><space>
inoremap … <space>:=<space>
inoremap Ú <space>~<space>
inoremap ≠ <space>==<space>
inoremap ± <space>+<space>
inoremap – <space>=<space>
inoremap — <space>-<space>
inoremap • <space>*<space>
inoremap ° <space>/<space>
inoremap ≤ <space><<space>
inoremap ≥ <space>><space>
inoremap ¯ <space><=<space>
inoremap ˘ <space>>=<space>

" => Awk

" => Bash

" => Go

" => Julia

" => Markdown
autocmd FileType Rmd,md inoremap « ```

" => R
autocmd FileType R,Rmd inoremap ﬁ <space>%in%<space>
autocmd FileType R,Rmd inoremap º <space>%>%<space>
autocmd FileType R,Rmd inoremap ‚ <space>%<>%<space>
autocmd FileType R,Rmd inoremap ª <space>%$%<space>
autocmd FileType R,Rmd inoremap · <space>%T>%<space>

" => Rust

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
