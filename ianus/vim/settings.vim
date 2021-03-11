
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" sections:
"
"    -> general
"    -> visual mode related
"    -> files and backups
"    -> text, tab and indent related
"    -> splits and tabbed files
"    -> overwriting colors
"
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => general
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" with a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = "\<space>"

" enable syntax
syntax on

" explicitly identify julia files
autocmd BufRead,BufNewFile *.jl :set filetype=julia

" enable filetype plugins
filetype plugin on
filetype indent on

" disable automatic comment insertion
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" give more space for displaying messages.
set cmdheight=2

" set to auto read when a file is changed from the outside
set autoread

" ignore binary files
set wildignore+=*.a,*.o
set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png
set wildignore+=.DS_Store,.git
set wildignore+=*.doc,*.docx,*.ppt,*.pptx

" :W sudo saves the file
" (useful for handling the permission-denied error)
" command W w !sudo tee % > /dev/null

" ruler
set ruler
set number
set relativenumber

" search
set history=1000
set hlsearch
set showmatch
set incsearch

set scrolloff=3
set scrolljump=5

set showcmd
set cmdheight=2
set wildmenu
" set wildmode=longest,list,full

" enable delete
set bs=2

" automatically deletes all trailing whitespace on save.
autocmd BufWritePre * %s/\s\+$//e

" autowrite for debugging
set autowrite


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => visual mode related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" " visual mode pressing * or # searches for the current selection
" " super useful! from an idea by Michael Naumann
" vmap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
" vmap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => files, backups
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" turn backup off, since most stuff is in svn, git et.c anyway...
set nobackup
set nowb
set noswapfile


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" use spaces instead of tabs
set expandtab

" Invisibles
scriptencoding utf-8
set encoding=utf-8
if $LANG =~ '\(UTF\|utf\)-\?8' || $LC_CTYPE =~ '\(UTF\|utf\)-\?8'
  set list
  set listchars=eol:¬,tab:»–,trail:·,extends:>,precedes:<
endif

" be smart when using tabs ;)
set smarttab

" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2

" linebreak on 500 characters
set lbr
set tw=500

set ai "auto indent
set si "smart indent
set wrap "wrap lines


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => splits and tabbed files
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set splitbelow splitright

" patch vertical splits
set diffopt+=vertical

" removes pipes | that act as seperators on splits
set fillchars+=vert:\


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => overwriting colors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"         cterm-colors
" NR-16   NR-8    COLOR NAME
" 0       0       Black
" 1       4       DarkBlue
" 2       2       DarkGreen
" 3       6       DarkCyan
" 4       1       DarkRed
" 5       5       DarkMagenta
" 6       3       Brown, DarkYellow
" 7       7       LightGray, LightGrey, Gray, Grey
" 8       0*      DarkGray, DarkGrey
" 9       4*      Blue, LightBlue
" 10      2*      Green, LightGreen
" 11      6*      Cyan, LightCyan
" 12      1*      Red, LightRed
" 13      5*      Magenta, LightMagenta
" 14      3*      Yellow, LightYellow
" 15      7*      White

" " invisibles
" highlight NonText ctermfg=DarkGray
" highlight SpecialKey ctermfg=DarkGray
"
" " search
" highlight Search ctermbg=LightYellow ctermfg=Red cterm=bold
"
" " comment
" highlight Comment ctermfg=Gray
"
" " error
" highlight Error ctermfg=Red ctermbg=White cterm=bold
" highlight ErrorMsg ctermfg=Red ctermbg=White cterm=bold
"
" " spell checker
" highlight SpellBad ctermfg=DarkRed ctermbg=NONE cterm=NONE
"
" " identifier (link to funtion)
" highlight Identifier ctermfg=Blue cterm=NONE
"
" " tab selector
" highlight WildMenu ctermbg=Black ctermfg=Yellow cterm=underline
" highlight StatusLine ctermbg=Blue ctermfg=Black
"
" " visual mode
" highlight Visual ctermfg=DarkYellow ctermbg=DarkGray cterm=NONE


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" patch for tmux compatibility
if &term =~ '^screen'
    " tmux will send xterm-style keys when its xterm-keys option is on
    execute "set <xUp>=\e[1;*A"
    execute "set <xDown>=\e[1;*B"
    execute "set <xRight>=\e[1;*C"
    execute "set <xLeft>=\e[1;*D"
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" fuzzy finder
set rtp+=/usr/local/opt/fzf


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
