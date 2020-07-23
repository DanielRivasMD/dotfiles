
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Sections:
"    -> Load Plugins & Functions
"
"    -> General
"    -> Editing mappings
"    -> Visual mode related
"    -> Files and backups
"    -> Text, tab and indent related
"
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Load Plugins & Functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = "\<space>"

source ~/.vim/functions.vim
source ~/.vim/plugins.vim
source ~/.vim/keybindings.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Leader shortcuts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Execute current buffer
nmap <leader>e :!%:p<CR>

" Write buffer to...
nmap <leader>p :!cat %:p >

" List directory
nmap <leader>l :!exa

" Highlight toggle
nmap <leader>n :nohlsearch<CR>

" Fast saving
nmap <leader>w :w!<CR>

" Fast quit
nmap <leader>q :q!

" Fast splits
nmap <leader>i :wincmd p<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax
syntax on

" Explicitly identify julia files
autocmd BufRead,BufNewFile *.jl :set filetype=julia

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" :W sudo saves the file
" (useful for handling the permission-denied error)
" command W w !sudo tee % > /dev/null

" Ruler
set ruler
set number
set relativenumber

" Search
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

" Enable delete
set bs=2

" Disjoint stroke sequence (oposite to 'J')
nnoremap K i<CR><Esc>

" Automatically deletes all trailing whitespace on save.
autocmd BufWritePre * %s/\s\+$//e


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Exit insert mode with jj
imap jj <Esc>
vmap jj <Esc>


""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
" set expandtab

" Invisibles
scriptencoding utf-8
set encoding=utf-8
if $LANG =~ '\(UTF\|utf\)-\?8' || $LC_CTYPE =~ '\(UTF\|utf\)-\?8'
  set list
  set listchars=eol:¬,tab:»–,trail:·,extends:>,precedes:<
endif

" Be smart when using tabs ;)
set smarttab

" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Overwriting colors
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

" Invisibles
highlight NonText ctermfg=DarkGray
highlight SpecialKey ctermfg=DarkGray

" Search
highlight Search ctermbg=LightYellow ctermfg=Red cterm=bold

" Comment
highlight Comment ctermfg=Gray

" Error
highlight Error ctermfg=Red ctermbg=White cterm=bold
highlight ErrorMsg ctermfg=Red ctermbg=White cterm=bold

" Spell checker
highlight SpellBad ctermfg=DarkRed ctermbg=NONE cterm=NONE

" Identifier (Link to Funtion)
highlight Identifier ctermfg=Blue cterm=NONE

" Tab selector
highlight WildMenu ctermbg=Black ctermfg=Yellow cterm=underline
highlight StatusLine ctermbg=Blue ctermfg=Black

" Visual mode
highlight Visual ctermfg=DarkYellow ctermbg=DarkGray cterm=NONE


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
