-------------------- mappings ------------------------------

map('n', '<Space>', '<NOP>')
vim.g.mapleader = ' '

-- no hl
map('n', '<Leader>h', ':set hlsearch!<CR>')

-- explorer
map('n', '<Leader>t', ':NvimTreeToggle<CR>')

-- window movement
map('i', '<C-Left>', '<C-w>h')
map('n', '<C-Left>', '<C-w>h')
map('v', '<C-Left>', '<C-w>h')

map('i', '<C-Down>', '<C-w>j')
map('n', '<C-Down>', '<C-w>j')
map('v', '<C-Down>', '<C-w>j')

map('i', '<C-Up>', '<C-w>k')
map('n', '<C-Up>', '<C-w>k')
map('v', '<C-Up>', '<C-w>k')

map('i', '<C-Right>', '<C-w>l')
map('n', '<C-Right>', '<C-w>l')
map('v', '<C-Right>', '<C-w>l')

-- indenting
map('v', '<M-O>', '<gv')
map('v', '<M-I>', '>gv')

-- escape
map('i', 'jj', '<ESC>')
map('v', 'jj', '<ESC>')

-- redo
map('i', 'UU', '<ESC>U')
map('n', 'U', ':redo<CR>')
map('v', 'UU', '<ESC>U')

-- undo
map('i', 'uu', '<ESC>u')
map('v', 'uu', '<ESC>uv')

-- movement begin / end file
map('i', '<M-g>', '<ESC>ggI')
map('n', '<M-g>', 'gg')
map('v', '<M-g>', 'gg')

map('i', '<M-G>', '<ESC>GI')
map('n', '<M-G>', 'G')
map('v', '<M-G>', 'G')

-- movement begin / end line
map('i', '<C-a>', '<ESC>I')
map('n', '<C-a>', '0')
map('v', '<C-a>', '0')

map('i', '<C-e>', '<ESC>A')
map('n', '<C-e>', '$')
map('v', '<C-e>', '$')

-- movement word
map('i', '<M-Left>', '<ESC>Bi')
map('n', '<M-Left>', 'B')
map('v', '<M-Left>', 'B')

map('i', '<M-Right>', '<ESC>Ea')
map('n', '<M-Right>', 'E')
map('v', '<M-Right>', 'E')

-- movement paragraph
map('i', '<M-Up>', '<ESC>{i')
map('n', '<M-Up>', '{')
map('v', '<M-Up>', '{')

map('i', '<M-Down>', '<ESC>}i')
map('n', '<M-Down>', '}')
map('v', '<M-Down>', '}')

-- movement to line
map('i', '<M-F>', '<ESC>:')
map('n', '<M-F>', ':')
map('v', '<M-F>', ':')

-- select word
map('i', '<S-Left>', '<ESC>vB')
map('n', '<S-Left>', 'vB')
map('v', '<S-Left>', 'B')

map('i', '<S-Right>', '<ESC>vE')
map('n', '<S-Right>', 'vE')
map('v', '<S-Right>', 'E')

-- select to begin / end line
map('i', '<M-S-Left>', '<ESC>v0')
map('n', '<M-S-Left>', 'v0')
map('v', '<M-S-Left>', '0')

map('i', '<M-S-Right>', '<ESC>v$')
map('n', '<M-S-Right>', 'v$')
map('v', '<M-S-Right>', '$')

-- select line from cursor
map('i', '<S-Up>', '<ESC>vk')
map('n', '<S-Up>', 'vk')
map('v', '<S-Up>', 'k')

map('i', '<S-Down>', '<ESC>vj')
map('n', '<S-Down>', 'vj')
map('v', '<S-Down>', 'j')

-- select paragraph
map('i', '<M-S-Up>', '<ESC>v{')
map('n', '<M-S-Up>', 'v{')
map('v', '<M-S-Up>', '{')

map('i', '<M-S-Down>', '<ESC>v}')
map('n', '<M-S-Down>', 'v}')
map('v', '<M-S-Down>', '}')

-- select line
map('i', '<M-L>', '<ESC>0v$')
map('n', '<M-L>', '0v$')
map('v', '<M-L>', '<ESC>0v$')

-- move lines normal mode
map('i', '<M-J>', '<ESC>ddpi')
map('n', '<M-J>', 'ddp')
map('v', '<M-J>', 'Vdpv')

map('i', '<M-K>', '<ESC>ddkPi')
map('n', '<M-K>', 'ddkP')
map('v', '<M-K>', 'VdkPv')

-- duplicate line
map('i', '<M-D>', '<ESC>yypi')
map('n', '<M-D>', 'yyp')
map('v', '<M-D>', 'Vypv')

-- delete line
map('i', '<M-X>', '<ESC>ddI')
map('n', '<M-X>', 'dd')
map('v', '<M-X>', 'Vdv')

-- auto pairs
map('i', '\'', '\'\'<Left>')
map('i', '"', '""<Left>')
map('i', '(', '()<Left>')
map('i', '[', '[]<Left>')
map('i', '{', '{}<Left>')

--------------------------------------------------
-- lsp
--------------------------------------------------
map('n', 'gk,', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>')                  -- previous diagnostic
map('n', 'gj;', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>')                  -- next diagnostic
map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>')                         -- definition
map('n', 'ge', '<cmd>lua vim.lsp.buf.declaration()<CR>')                        -- declaration
map('n', 'gf', '<cmd>lua vim.lsp.buf.hover()<CR>')                              -- hover
map('n', 'gl', '<cmd>lua vim.lsp.buf.rename()<CR>')                             -- rename
map('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>')                         -- references
map('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>')                     -- implementation
map('n', 'gh', '<cmd>lua vim.lsp.buf.signature_help()<CR>')                     -- signature
map('n', 'gy', '<cmd>lua vim.lsp.buf.document_symbol()<CR>')                    -- symbol

--------------------------------------------------
-- telescope
--------------------------------------------------
map('n', 'tt', ':Telescope ')

-- files
map('i', '<C-t>', '<cmd>lua require(\'telescope.builtin\').find_files()<CR>')
map('n', '<C-t>', '<cmd>lua require(\'telescope.builtin\').find_files()<CR>')
map('v', '<C-t>', '<cmd>lua require(\'telescope.builtin\').find_files()<CR>')

-- file browser
map('i', '<C-y>', '<cmd>lua require(\'telescope.builtin\').file_browser()<CR>')
map('n', '<C-y>', '<cmd>lua require(\'telescope.builtin\').file_browser()<CR>')
map('v', '<C-y>', '<cmd>lua require(\'telescope.builtin\').file_browser()<CR>')

-- buffers
map('i', '<C-b>', '<cmd>lua require(\'telescope.builtin\').buffers()<CR>')
map('n', '<C-b>', '<cmd>lua require(\'telescope.builtin\').buffers()<CR>')
map('v', '<C-b>', '<cmd>lua require(\'telescope.builtin\').buffers()<CR>')

-- ripgrep git files
map('i', '<C-r>', '<cmd>lua require(\'telescope.builtin\').live_grep()<CR>')
map('n', '<C-r>', '<cmd>lua require(\'telescope.builtin\').live_grep()<CR>')
map('v', '<C-r>', '<cmd>lua require(\'telescope.builtin\').live_grep()<CR>')

-- treesitter
map('n', 'ty', '<cmd>lua require(\'telescope.builtin\').treesitter()<CR>')

-- ripgrep all files
map('n', 'tr', '<cmd>lua require(\'telescope.builtin\').grep_string()<CR>')

-- git
map('n', 'gs', '<cmd>lua require(\'telescope.builtin\').git_status()<CR>')      -- git status
map('n', 'gc', '<cmd>lua require(\'telescope.builtin\').git_commits()<CR>')     -- git commits
map('n', 'gb', '<cmd>lua require(\'telescope.builtin\').git_branches()<CR>')    -- git branches
map('n', 'gv', '<cmd>lua require(\'telescope.builtin\').git_bcommits()<CR>')    -- git branch preview

map('n', 'tm', '<cmd>lua require(\'telescope.builtin\').marks()<CR>')           -- marks
map('n', 'tv', '<cmd>lua require(\'telescope.builtin\').registers()<CR>')       -- registers
map('n', 'tH', '<cmd>lua require(\'telescope.builtin\').keymaps()<CR>')         -- keymaps
map('n', 'tn', '<cmd>lua require(\'telescope.builtin\').man_pages()<CR>')       -- man pages
map('n', 'tc', '<cmd>lua require(\'telescope.builtin\').commands()<CR>')        -- commands

--------------------------------------------------
-- barbar
--------------------------------------------------
-- next tab
map('i', '<C-M-Right>', ':BufferNext<CR>')
map('n', '<C-M-Right>', ':BufferNext<CR>')
map('v', '<C-M-Right>', ':BufferNext<CR>')

-- previous tab
map('i', '<C-M-Left>', ':BufferPrevious<CR>')
map('n', '<C-M-Left>', ':BufferPrevious<CR>')
map('v', '<C-M-Left>', ':BufferPrevious<CR>')

-- move next tab
map('i', '<C-M-]>', ':BufferMoveNext<CR>')
map('n', '<C-M-]>', ':BufferMoveNext<CR>')
map('v', '<C-M-]>', ':BufferMoveNext<CR>')

-- move previous tab
map('i', '<C-M-[>', ':BufferMovePrevious<CR>')
map('n', '<C-M-[>', ':BufferMovePrevious<CR>')
map('v', '<C-M-[>', ':BufferMovePrevious<CR>')

--------------------------------------------------
-- fuzzy finder
--------------------------------------------------
map('i', '<M-r>', ':FZF<CR>')
map('n', '<M-r>', ':FZF<CR>')
map('v', '<M-r>', ':FZF<CR>')

-- comment
map('i', '<M-C>', ':call nerdcommenter#Comment("n", "Toggle")<CR>')
map('n', '<M-C>', ':call nerdcommenter#Comment("n", "Toggle")<CR>')
map('v', '<M-C>', ':call nerdcommenter#Comment("n", "Toggle")<CR>')

-- quit
map('i', '<M-q>', '<ESC>:q<CR>')
map('n', '<M-q>', ':q<CR>')
map('v', '<M-q>', ':q<CR>')
