
" automatically deletes trailing whitespaces on save
autocmd BufWritePre * :%s/\s\+$//e

" use rustfmt on save
let g:rustfmt_autosave = 1

" enable filetype plugins
filetype plugin on
filetype indent on

" disable automatic comment insertion
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" invisibles
scriptencoding utf-8
set encoding=utf-8
if $LANG =~ '\(UTF\|utf\)-\?8' || $LC_CTYPE =~ '\(UTF\|utf\)-\?8'
  set list
  set listchars=eol:¬,tab:»–,trail:·,extends:>,precedes:<
endif

