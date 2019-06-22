
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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

map <leader>\ :NERDTreeToggle<CR>
map <leader>' :NERDTreeFocus<CR>
map <leader>/ :NERDTreeFind

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
