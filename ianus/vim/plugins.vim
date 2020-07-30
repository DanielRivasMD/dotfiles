
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible              " be iMproved, required
filetype off                  " required

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vundle Manager
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" " Fuzzy Finder
" set rtp+=/usr/local/opt/fzf

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'junegunn/goyo.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'kshenoy/vim-signature'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'tpope/vim-fugitive'
Plugin 'jpalardy/vim-slime'
Plugin 'vim-syntastic/syntastic'
Plugin 'gabrielelana/vim-markdown'
Plugin 'JamshedVesuna/vim-markdown-preview'
Plugin 'JuliaEditorSupport/julia-vim'
Plugin 'ap/vim-css-color'
" Plugin 'powerline/powerline'

call vundle#end()            " required

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim-airline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:airline_section_y = '%{strftime("%a %d %b %H:%M")}'
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='ravenpower'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-markdown-preview
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let vim_markdown_preview_hotkey='<C-m>'
let vim_markdown_preview_browser='Opera'
let vim_markdown_preview_pandoc=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
