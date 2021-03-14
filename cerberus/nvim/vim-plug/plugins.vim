
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.config/nvim/autoload/plugged')

  " themes
  Plug 'tomasr/molokai'                               " molokai
  Plug 'joshdick/onedark.vim'                         " onedark
  Plug 'mhartington/oceanic-next'                     " oceanic next
  Plug 'ayu-theme/ayu-vim'                            " ayu
  Plug 'altercation/vim-colors-solarized'             " solarized

  " airline
  Plug 'vim-airline/vim-airline'                      " status bar
  Plug 'vim-airline/vim-airline-themes'               " status bar theme

  " devicons
  Plug 'ryanoasis/vim-devicons'                       " icons

  " start page
  Plug 'mhinz/vim-startify'                           " start page

  " git
  Plug 'airblade/vim-gitgutter'                       " git gutter
  Plug 'tpope/vim-fugitive'                           " git commands
  Plug 'kshenoy/vim-signature'                        " marks gutter

  " commentator
  Plug 'preservim/nerdcommenter'                      " commentator

  " which key
  Plug 'liuchengxu/vim-which-key'                     " keys

  " Plug 'ap/vim-css-color'                             " colorized color text
  " Plug 'scrooloose/nerdtree'                          " toogle file tree
  " Plug 'Xuyuanp/nerdtree-git-plugin'                  " git status on file tree
  Plug 'Yggdroot/indentline'                          " show indentation
  Plug 'mg979/vim-visual-multi', {'branch': 'master'} " multicursors
  Plug 'godlygeek/tabular'                            " text align
 " Plug 'neoclide/coc.nvim'                            " code completion
  Plug 'AndrewRadev/splitjoin.vim'                    " single line vs multi line code
  Plug 'ctrlpvim/ctrlp.vim'                           " fuzzy finder
  Plug 'easymotion/vim-easymotion'                    " visual movement

  " language
  Plug 'vim-syntastic/syntastic'                      " multi syntax
  Plug 'rust-lang/rust.vim'                           " Rust
  Plug 'racer-rust/vim-racer'                         " racer support
  Plug 'fatih/vim-go'                                 " Go
  Plug 'SirVer/ultisnips'                             " snipe engine
  Plug 'JuliaEditorSupport/julia-vim'                 " Julia
  Plug 'dag/vim-fish'                                 " Fish
  Plug 'cespare/vim-toml'                             " Toml
  Plug 'gabrielelana/vim-markdown'                    " Markdown
  Plug 'JamshedVesuna/vim-markdown-preview'           " quick preview on Opera

  " fuzzy finder
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'airblade/vim-rooter'

  " tabline
  " Plug 'romgrk/barbar.nvim'
  Plug 'pacha/vem-tabline'

  " tmux complete
  Plug 'prabirshrestha/async.vim'
  Plug 'prabirshrestha/asyncomplete.vim'
  Plug 'wellle/tmux-complete.vim'

  " ranger BUG
  " Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}

  " Plug 'neovim/nvim-lspconfig'
  " Plug 'hrsh7th/nvim-compe'

call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
