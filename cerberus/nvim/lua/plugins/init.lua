--------------------------------------------------

require 'paq' {

  {'savq/paq-nvim', opt = true};                  -- paq-nvim manages itself

  'ayu-theme/ayu-vim';                            -- theme
  'mhinz/vim-startify';                           -- start page
  'glepnir/galaxyline.nvim';                      -- status bar
  'romgrk/barbar.nvim';                           -- tabs
  'kyazdani42/nvim-tree.lua';                     -- tree

  'kyazdani42/nvim-web-devicons';                 -- devicons tabs
  'ryanoasis/vim-devicons';                       -- devicons

  'neovim/nvim-lspconfig';                        -- lsp
  'alexaandru/nvim-lspupdate';                    -- lsp manager
  'nvim-treesitter/nvim-treesitter';              -- treesitter
  'hrsh7th/nvim-compe';                           -- compe

  'liuchengxu/vim-which-key';                     -- which key

  -- telescope
  'nvim-lua/popup.nvim';
  'nvim-lua/plenary.nvim';
  'nvim-telescope/telescope.nvim';

  -- git
  'airblade/vim-gitgutter';
  'tpope/vim-fugitive';
  'kshenoy/vim-signature';

  -- gitui
  'aspeddro/gitui.nvim';

  -- rust
  'rust-lang/rust.vim';
  -- 'racer-rust/vim-racer';
  'rust-analyzer/rust-analyzer';

  -- go
  'fatih/vim-go';

  -- julia
  'JuliaEditorSupport/julia-vim';
  'neovim/nvim-lsp';
  'kdheepak/JuliaFormatter.vim';

  'Yggdroot/indentline';

  'prabirshrestha/async.vim';
  'prabirshrestha/asyncomplete.vim';
  'wellle/tmux-complete.vim';

  {'junegunn/fzf', hook = fn['fzf#install']};
  'junegunn/fzf.vim';

  'preservim/nerdcommenter';
  'godlygeek/tabular';

  'easymotion/vim-easymotion';

  'jpalardy/vim-slime';

  -- -- Easily Create Gists
  -- use 'mattn/vim-gist';
  -- use 'mattn/webapi-vim';

}

--------------------------------------------------
