
-------------------- PLUGINS -------------------------------
local cmd = vim.cmd                     -- to execute Vim commands e.g. cmd('pwd')

cmd 'packadd paq-nvim'                  -- load the package manager
local paq = require('paq-nvim').paq     -- a convenient alias
paq {'savq/paq-nvim', opt = true}       -- paq-nvim manages itself

paq {'ayu-theme/ayu-vim'}               -- theme
paq {'mhinz/vim-startify'}              -- start page
paq {'glepnir/galaxyline.nvim'}         -- status bar TODO: customize
paq {'romgrk/barbar.nvim'}              -- tabs
paq {'kyazdani42/nvim-tree.lua'}        -- tree

paq {'kyazdani42/nvim-web-devicons'}    -- devicons tabs
paq {'ryanoasis/vim-devicons'}          -- devicons

paq {'rust-lang/rust.vim'}
paq {'racer-rust/vim-racer'}
paq {'fatih/vim-go'}

paq {'neovim/nvim-lspconfig'}           -- lsp

paq {'nvim-treesitter/nvim-treesitter'} -- treesitter

paq {'hrsh7th/nvim-compe'}

-- telescope
paq {'nvim-lua/popup.nvim'}
paq {'nvim-lua/plenary.nvim'}
paq {'nvim-telescope/telescope.nvim'}

-- git
paq {'airblade/vim-gitgutter'}
paq {'tpope/vim-fugitive'}
paq {'kshenoy/vim-signature'}

paq {'liuchengxu/vim-which-key'}        -- which key

paq {'Yggdroot/indentline'}

paq {'JuliaEditorSupport/julia-vim'}
paq {'neovim/nvim-lsp'}

paq {'prabirshrestha/async.vim'}
paq {'prabirshrestha/asyncomplete.vim'}
paq {'wellle/tmux-complete.vim'}

paq {'junegunn/fzf', hook = fn['fzf#install']}
paq {'junegunn/fzf.vim'}

paq {'preservim/nerdcommenter'}
paq {'godlygeek/tabular'}

paq {'easymotion/vim-easymotion'}

--     -- -- Easily Create Gists
--     -- use 'mattn/vim-gist'
--     -- use 'mattn/webapi-vim'
