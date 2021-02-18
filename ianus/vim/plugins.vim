
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible              " be iMproved, required
filetype off                  " required

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vundle manager
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" set the runtime path to include Vundle and initialize
set rtp+=~/.archive/ianus/vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'                   " Plugin manager
Plugin 'tomasr/molokai'                         " molokai theme
Plugin 'mhinz/vim-startify'                     " start page
Plugin 'ap/vim-css-color'                       " colorized color text
Plugin 'vim-airline/vim-airline'                " status bar
Plugin 'vim-airline/vim-airline-themes'         " status bar theme
Plugin 'ryanoasis/vim-devicons'                 " icons
Plugin 'scrooloose/nerdtree'                    " toogle file tree
Plugin 'Xuyuanp/nerdtree-git-plugin'            " git status on file tree
Plugin 'airblade/vim-gitgutter'                 " git gutter
Plugin 'tpope/vim-fugitive'                     " git commands
Plugin 'kshenoy/vim-signature'                  " marks gutter
Plugin 'Yggdroot/indentline'                    " show indentation
" Plugin 'terryma/vim-multiple-cursors'         " multicursors [deprecated]
Plugin 'mg979/vim-visual-multi', {'branch': 'master'}   " multicursors
Plugin 'preservim/nerdcommenter'                " commentator
Plugin 'godlygeek/tabular'                      " text align
Plugin 'neoclide/coc.nvim'                      " code completion
Plugin 'AndrewRadev/splitjoin.vim'              " single line vs multi line code
Plugin 'ctrlpvim/ctrlp.vim'                     " fuzzy finder
Plugin 'easymotion/vim-easymotion'              " visual movement
Plugin 'liuchengxu/vim-which-key'               " keys
Plugin 'vim-syntastic/syntastic'                " multi syntax
Plugin 'rust-lang/rust.vim'                     " Rust
Plugin 'racer-rust/vim-racer'                   " racer support
Plugin 'fatih/vim-go'                           " Go
Plugin 'SirVer/ultisnips'                       " snipe engine
Plugin 'JuliaEditorSupport/julia-vim'           " Julia
Plugin 'dag/vim-fish'                           " Fish
Plugin 'cespare/vim-toml'                       " Toml
Plugin 'gabrielelana/vim-markdown'              " Markdown
Plugin 'JamshedVesuna/vim-markdown-preview'     " quick preview on Opera

" Plugin 'jpalardy/vim-slime'

call vundle#end()            " required

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" sourcing
source ~/.archive/ianus/vim/plugins/molokai.vim
source ~/.archive/ianus/vim/plugins/vim-startify.vim
source ~/.archive/ianus/vim/plugins/vim-css-color.vim
source ~/.archive/ianus/vim/plugins/vim-airline.vim
source ~/.archive/ianus/vim/plugins/vim-airline-themes.vim
source ~/.archive/ianus/vim/plugins/vim-devicons.vim
source ~/.archive/ianus/vim/plugins/nerdtree.vim
source ~/.archive/ianus/vim/plugins/nerdtree-git-plugin.vim
source ~/.archive/ianus/vim/plugins/vim-gitgutter.vim
source ~/.archive/ianus/vim/plugins/vim-signature.vim
source ~/.archive/ianus/vim/plugins/indentline.vim
source ~/.archive/ianus/vim/plugins/vim-multiple-cursors.vim
source ~/.archive/ianus/vim/plugins/nerdcommenter.vim
source ~/.archive/ianus/vim/plugins/tabular.vim
source ~/.archive/ianus/vim/plugins/coc.nvim.vim
source ~/.archive/ianus/vim/plugins/splitjoin.vim
source ~/.archive/ianus/vim/plugins/ctrlp.vim
source ~/.archive/ianus/vim/plugins/vim-easymotion.vim
source ~/.archive/ianus/vim/plugins/vim-which-key.vim
source ~/.archive/ianus/vim/plugins/syntastic.vim
source ~/.archive/ianus/vim/plugins/rust.vim
source ~/.archive/ianus/vim/plugins/vim-go.vim
source ~/.archive/ianus/vim/plugins/ultisnips.vim
source ~/.archive/ianus/vim/plugins/julia-vim.vim
source ~/.archive/ianus/vim/plugins/vim-fish.vim
source ~/.archive/ianus/vim/plugins/vim-toml.vim
source ~/.archive/ianus/vim/plugins/vim-markdown.vim
source ~/.archive/ianus/vim/plugins/vim-markdown-preview.vim


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
