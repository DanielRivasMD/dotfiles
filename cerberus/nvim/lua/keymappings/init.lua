----------------------------------------------------------------------------------------------------

local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- shorten function name
local keymap = vim.api.nvim_set_keymap

-- remap space as leader key
keymap('', '<Space>', '<Nop>', opts)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- modes
--   normal_mode = 'n',
--   insert_mode = 'i',
--   visual_mode = 'v',
--   visual_block_mode = 'x',
--   term_mode = 't',
--   command_mode = 'c',

----------------------------------------------------------------------------------------------------

-- no hl
keymap('n', '<Leader>h', ':set hlsearch!<CR>', opts)

-- explorer
keymap('n', '<Leader>t', ':NvimTreeToggle<CR>', opts)

-- window movement
keymap('i', '<C-Left>', '<C-w>h', opts)
keymap('n', '<C-Left>', '<C-w>h', opts)
keymap('v', '<C-Left>', '<C-w>h', opts)

keymap('i', '<C-Down>', '<C-w>j', opts)
keymap('n', '<C-Down>', '<C-w>j', opts)
keymap('v', '<C-Down>', '<C-w>j', opts)

keymap('i', '<C-Up>', '<C-w>k', opts)
keymap('n', '<C-Up>', '<C-w>k', opts)
keymap('v', '<C-Up>', '<C-w>k', opts)

keymap('i', '<C-Right>', '<C-w>l', opts)
keymap('n', '<C-Right>', '<C-w>l', opts)
keymap('v', '<C-Right>', '<C-w>l', opts)

-- pasting
keymap('v', 'p', '"_dP', opts)

-- indenting
keymap('v', '<M-O>', '<gv', opts)
keymap('v', '<M-I>', '>gv', opts)

-- escape
keymap('i', 'jj', '<ESC>', opts)
keymap('v', 'jj', '<ESC>', opts)

-- redo
keymap('i', 'UU', '<ESC>U', opts)
keymap('n', 'U', ':redo<CR>', opts)
keymap('v', 'UU', '<ESC>U', opts)

-- undo
keymap('i', 'uu', '<ESC>u', opts)
keymap('v', 'uu', '<ESC>uv', opts)

-- movement begin / end file
keymap('i', '<M-g>', '<ESC>ggI', opts)
keymap('n', '<M-g>', 'gg', opts)
keymap('v', '<M-g>', 'gg', opts)

keymap('i', '<M-G>', '<ESC>GI', opts)
keymap('n', '<M-G>', 'G', opts)
keymap('v', '<M-G>', 'G', opts)

-- movement begin / end line
keymap('i', '<C-a>', '<ESC>I', opts)
keymap('n', '<C-a>', '0', opts)
keymap('v', '<C-a>', '0', opts)

keymap('i', '<C-e>', '<ESC>A', opts)
keymap('n', '<C-e>', '$', opts)
keymap('v', '<C-e>', '$', opts)

-- movement word
keymap('i', '<M-b>', '<ESC>Bi', opts)
keymap('n', '<M-b>', 'B', opts)
keymap('v', '<M-b>', 'B', opts)

keymap('i', '<M-f>', '<ESC>Ea', opts)
keymap('n', '<M-f>', 'E', opts)
keymap('v', '<M-f>', 'E', opts)

-- movement paragraph
keymap('i', '<M-Up>', '<ESC>{i', opts)
keymap('n', '<M-Up>', '{', opts)
keymap('v', '<M-Up>', '{', opts)

keymap('i', '<M-Down>', '<ESC>}i', opts)
keymap('n', '<M-Down>', '}', opts)
keymap('v', '<M-Down>', '}', opts)

-- movement to line
keymap('i', '<M-F>', '<ESC>:', opts)
keymap('n', '<M-F>', ':', opts)
keymap('v', '<M-F>', ':', opts)

-- select word
keymap('i', '<S-Left>', '<ESC>vB', opts)
keymap('n', '<S-Left>', 'vB', opts)
keymap('v', '<S-Left>', 'B', opts)

keymap('i', '<S-Right>', '<ESC>vE', opts)
keymap('n', '<S-Right>', 'vE', opts)
keymap('v', '<S-Right>', 'E', opts)

-- select to begin / end line
keymap('i', '<M-S-Left>', '<ESC>v0', opts)
keymap('n', '<M-S-Left>', 'v0', opts)
keymap('v', '<M-S-Left>', '0', opts)

keymap('i', '<M-S-Right>', '<ESC>v$', opts)
keymap('n', '<M-S-Right>', 'v$', opts)
keymap('v', '<M-S-Right>', '$', opts)

-- select line from cursor
keymap('i', '<S-Up>', '<ESC>vk', opts)
keymap('n', '<S-Up>', 'vk', opts)
keymap('v', '<S-Up>', 'k', opts)

keymap('i', '<S-Down>', '<ESC>vj', opts)
keymap('n', '<S-Down>', 'vj', opts)
keymap('v', '<S-Down>', 'j', opts)

-- select paragraph
keymap('i', '<M-S-Up>', '<ESC>v{', opts)
keymap('n', '<M-S-Up>', 'v{', opts)
keymap('v', '<M-S-Up>', '{', opts)

keymap('i', '<M-S-Down>', '<ESC>v}', opts)
keymap('n', '<M-S-Down>', 'v}', opts)
keymap('v', '<M-S-Down>', '}', opts)

-- select line
keymap('i', '<M-L>', '<ESC>0v$', opts)
keymap('n', '<M-L>', '0v$', opts)
keymap('v', '<M-L>', '<ESC>0v$', opts)

-- move lines normal mode
keymap('i', '<M-J>', '<ESC>:m .+1<CR>==i', opts)
keymap('n', '<M-J>', ':m .+1<CR>==', opts)
keymap('v', '<M-j>', ':m .+1<CR>==', opts)

keymap('i', '<M-K>', '<ESC>:m .-2<CR>==i', opts)
keymap('n', '<M-K>', ':m .-2<CR>==', opts)
keymap('v', '<M-k>', ':m .-2<CR>==', opts)

-- move lines visual mode
keymap("x", "<M-J>", ":move '>+1<CR>gv-gv", opts)
keymap('x', '<M-K>', ":move '<-2<CR>gv-gv", opts)

-- duplicate line
keymap('i', '<M-D>', '<ESC>yypi', opts)
keymap('n', '<M-D>', 'yyp', opts)
keymap('v', '<M-D>', 'Vypv', opts)

-- delete line
keymap('i', '<M-X>', '<ESC>ddI', opts)
keymap('n', '<M-X>', 'dd', opts)
keymap('v', '<M-X>', 'Vdv', opts)

-- auto pairs
keymap('i', '\'', '\'\'<Left>', opts)
keymap('i', '"', '""<Left>', opts)
keymap('i', '(', '()<Left>', opts)
keymap('i', '[', '[]<Left>', opts)
keymap('i', '{', '{}<Left>', opts)

----------------------------------------------------------------------------------------------------
-- lsp
----------------------------------------------------------------------------------------------------

-- keymap('n', 'gk,', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', optsc)                  -- previous diagnosti
-- keymap('n', 'gj;', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', optsc)                  -- next diagnosti
-- keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', optsn)                         -- definitio
-- keymap('n', 'ge', '<cmd>lua vim.lsp.buf.declaration()<CR>', optsn)                        -- declaratio
-- keymap('n', 'gf', '<cmd>lua vim.lsp.buf.hover()<CR>', optsr)                              -- hove
-- keymap('n', 'gl', '<cmd>lua vim.lsp.buf.rename()<CR>', optse)                             -- renam
-- keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', optss)                         -- reference
-- keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', optsn)                     -- implementatio
-- keymap('n', 'gh', '<cmd>lua vim.lsp.buf.signature_help()<CR>', optse)                     -- signatur
-- keymap('n', 'gy', '<cmd>lua vim.lsp.buf.document_symbol()<CR>', optsl)                    -- symbo

----------------------------------------------------------------------------------------------------
-- telescope
----------------------------------------------------------------------------------------------------

keymap('n', 'tt', ':Telescope ', opts)

-- -- files
keymap('i', '<C-t>', "<cmd>lua require('telescope.builtin').find_files()<CR>", opts)
keymap('n', '<C-t>', "<cmd>lua require('telescope.builtin').find_files()<CR>", opts)
keymap('v', '<C-t>', "<cmd>lua require('telescope.builtin').find_files()<CR>", opts)

-- file browser
keymap('i', '<C-y>', "<cmd>lua require('telescope.builtin').file_browser()<CR>", opts)
keymap('n', '<C-y>', "<cmd>lua require('telescope.builtin').file_browser()<CR>", opts)
keymap('v', '<C-y>', "<cmd>lua require('telescope.builtin').file_browser()<CR>", opts)

-- buffers
keymap('i', '<C-b>', "<cmd>lua require('telescope.builtin').buffers()<CR>", opts)
keymap('n', '<C-b>', "<cmd>lua require('telescope.builtin').buffers()<CR>", opts)
keymap('v', '<C-b>', "<cmd>lua require('telescope.builtin').buffers()<CR>", opts)

-- ripgrep git files
keymap('i', '<C-r>', "<cmd>lua require('telescope.builtin').live_grep()<CR>", opts)
keymap('n', '<C-r>', "<cmd>lua require('telescope.builtin').live_grep()<CR>", opts)
keymap('v', '<C-r>', "<cmd>lua require('telescope.builtin').live_grep()<CR>", opts)

-- treesitter
keymap('n', 'ty', "<cmd>lua require('telescope.builtin').treesitter()<CR>", opts)

-- ripgrep all files
keymap('n', 'tr', "<cmd>lua require('telescope.builtin').grep_string()<CR>", opts)

-- git
keymap('n', 'gs', "<cmd>lua require('telescope.builtin').git_status()<CR>", opts)      -- git statu, optss
keymap('n', 'gc', "<cmd>lua require('telescope.builtin').git_commits()<CR>", opts)     -- git commit, optss
keymap('n', 'gb', "<cmd>lua require('telescope.builtin').git_branches()<CR>", opts)    -- git branche, optss
keymap('n', 'gv', "<cmd>lua require('telescope.builtin').git_bcommits()<CR>", opts)    -- git branch previe, optsw

keymap('n', 'tm', "<cmd>lua require('telescope.builtin').marks()<CR>", opts)           -- mark, optss
keymap('n', 'tv', "<cmd>lua require('telescope.builtin').registers()<CR>", opts)       -- register, optss
keymap('n', 'tH', "<cmd>lua require('telescope.builtin').keymaps()<CR>", opts)         -- keymap, optss
keymap('n', 'tn', "<cmd>lua require('telescope.builtin').man_pages()<CR>", opts)       -- man page, optss
keymap('n', 'tc', "<cmd>lua require('telescope.builtin').commands()<CR>", opts)        -- command, optss

----------------------------------------------------------------------------------------------------
-- barbar
----------------------------------------------------------------------------------------------------

-- next tab
keymap('i', '<C-M-Right>', ':BufferNext<CR>', opts)
keymap('n', '<C-M-Right>', ':BufferNext<CR>', opts)
keymap('v', '<C-M-Right>', ':BufferNext<CR>', opts)

keymap('i', '<M-l>', ':BufferNext<CR>', opts)
keymap('n', '<M-l>', ':BufferNext<CR>', opts)
keymap('v', '<M-l>', ':BufferNext<CR>', opts)

-- previous tab
keymap('i', '<C-M-Left>', ':BufferPrevious<CR>', opts)
keymap('n', '<C-M-Left>', ':BufferPrevious<CR>', opts)
keymap('v', '<C-M-Left>', ':BufferPrevious<CR>', opts)

keymap('i', '<M-h>', ':BufferPrevious<CR>', opts)
keymap('n', '<M-h>', ':BufferPrevious<CR>', opts)
keymap('v', '<M-h>', ':BufferPrevious<CR>', opts)

-- move next tab
keymap('i', '<C-M-]>', ':BufferMoveNext<CR>', opts)
keymap('n', '<C-M-]>', ':BufferMoveNext<CR>', opts)
keymap('v', '<C-M-]>', ':BufferMoveNext<CR>', opts)

-- move previous tab
keymap('i', '<C-M-[>', ':BufferMovePrevious<CR>', opts)
keymap('n', '<C-M-[>', ':BufferMovePrevious<CR>', opts)
keymap('v', '<C-M-[>', ':BufferMovePrevious<CR>', opts)

----------------------------------------------------------------------------------------------------
-- fuzzy finder
----------------------------------------------------------------------------------------------------
keymap('i', '<M-r>', ':FZF<CR>', opts)
keymap('n', '<M-r>', ':FZF<CR>', opts)
keymap('v', '<M-r>', ':FZF<CR>', opts)

-- comment
keymap('i', '<M-C>', ':call nerdcommenter#Comment("n", "Toggle")<CR>', opts)
keymap('n', '<M-C>', ':call nerdcommenter#Comment("n", "Toggle")<CR>', opts)
keymap('v', '<M-C>', ':call nerdcommenter#Comment("n", "Toggle")<CR>', opts)

-- quit
keymap('i', '<M-q>', '<ESC>:q<CR>', opts)
keymap('n', '<M-q>', ':q<CR>', opts)
keymap('v', '<M-q>', ':q<CR>', opts)

----------------------------------------------------------------------------------------------------
