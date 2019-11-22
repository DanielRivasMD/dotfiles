
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
inoremap Ó <Esc>I
inoremap Ò <Esc>A
nnoremap Ó 0
nnoremap Ò $

inoremap ˙ <Esc>Bi
inoremap ¬ <Esc>Ea
nnoremap ˙ B
nnoremap ¬ E

" => Vertical Movement
inoremap Ô <Esc>Gi
inoremap  <Esc>ggi
nnoremap Ô G
nnoremap  gg

inoremap ˚ <Esc>{i
inoremap ∆ <Esc>}i
nnoremap ˚ {
nnoremap ∆ }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

map <leader>\ :NERDTreeToggle<CR>
map <leader>' :NERDTreeFocus<CR>
map <leader>/ :NERDTreeFind

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
