
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible              " be iMproved, required
filetype off                  " required

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vundle manager
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" " Fuzzy Finder
" set rtp+=/usr/local/opt/fzf

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
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
Plugin 'ryanoasis/vim-devicons'
Plugin 'Yggdroot/indentline'
Plugin 'godlygeek/tabular'
Plugin 'AndrewRadev/splitjoin.vim'
Plugin 'rust-lang/rust.vim'
Plugin 'neoclide/coc.nvim'
Plugin 'cespare/vim-toml'
Plugin 'gmarik/vundle'
Plugin 'dag/vim-fish'
Plugin 'mhinz/vim-startify'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'easymotion/vim-easymotion'
Plugin 'liuchengxu/vim-which-key'
Plugin 'tomasr/molokai'                         " molokai theme
Plugin 'scrooloose/nerdtree'                    " toogle file tree

call vundle#end()            " required


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim-airline
" => molokai
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:rehash256 = 1
let g:molokai_original = 1
colorscheme molokai


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
" => NERDTree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

map <leader>' :NERDTreeToggle<CR>
map <leader>" :NERDTreeFocus<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Syntastic
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
