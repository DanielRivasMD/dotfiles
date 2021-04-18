
-- lsp
require('lsp')

require('utils')
require('plugins')
require('settings')
require('keymappings')
require('colorscheme')

-- plugins
require('plugins.barbar')      -- TODO: customize barbar. tab movement
require('plugins.galaxyline')  -- TODO: customize galaxyline
require('plugins.startify')
require('plugins.compe')
require('plugins.telescope')   -- TODO: customize

-- vimscript
vim.cmd('source /Users/drivas/.config/nvim/vimscript/whichkey/init.vim')       -- which key
vim.cmd('source /Users/drivas/.config/nvim/vimscript/vim-go/init.vim')         -- vim go
vim.cmd('source /Users/drivas/.config/nvim/vimscript/vim-easymotion/init.vim') -- vim easymotion
vim.cmd('source /Users/drivas/.config/nvim/vimscript/vim-slime/init.vim')      -- vim slime
vim.cmd('source /Users/drivas/.config/nvim/vimscript/settings/init.vim')       -- settings vimscript

