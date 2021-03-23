
-------------------- mappings ------------------------------

map('n', '<Space>', '<NOP>')
vim.g.mapleader = ' '

-- <Tab> to navigate the completion menu
map('i', '<S-Tab>', 'pumvisible() ? "\\<C-p>" : "\\<Tab>"', {expr = true})
map('i', '<Tab>', 'pumvisible() ? "\\<C-n>" : "\\<Tab>"', {expr = true})

-- no hl
map('n', '<Leader>h', ':set hlsearch!<CR>')

-- explorer
map('n', '<Leader>e', ':NvimTreeToggle<CR>')

-- window movement
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

-- indenting
map('v', '<', '<gv')
map('v', '>', '>gv')

-- escape
map('i', 'jj', '<ESC>')
map('v', 'jj', '<ESC>')

-- redo
map('n', 'U', ':redo<CR>')
map('i', 'UU', '<ESC>U')

-- undo
map('i', 'uu', '<ESC>u')

-- movement
map('i', '<M-S-Left>', '<ESC>I')
map('i', '<M-S-Right>', '<ESC>A')
map('n', '<M-S-Left>', '0')
map('n', '<M-S-Right>', '$')

map('i', '<M-Left>', '<ESC>Bi')
map('i', '<M-Right>', '<ESC>Ea')
map('n', '<M-Left>', 'B')
map('n', '<M-Right>', 'E')

map('i', '<M-S-Up>', '<ESC>ggi')
map('i', '<M-S-Down>', '<ESC>Gi')
map('n', '<M-S-Up>', 'gg')
map('n', '<M-S-Down>', 'G')

map('i', '<M-Up>', '<ESC>{i')
map('i', '<M-Down>', '<ESC>}i')
map('n', '<M-Up>', '{')
map('n', '<M-Down>', '}')

-- selection
map('i', '<S-Left>', '<ESC>vB')
map('i', '<S-Right>', '<ESC>vE')
map('n', '<S-Left>', 'vB')
map('n', '<S-Right>', 'vE')
map('v', '<S-Left>', 'B')
map('v', '<S-Right>', 'E')

map('i', '<S-Up>', '<ESC>v{')
map('i', '<S-Down>', '<ESC>v}')
map('n', '<S-Up>', 'v{')
map('n', '<S-Down>', 'v}')
map('v', '<S-Up>', '{')
map('v', '<S-Down>', '}')

-- move selected line / block of text in visual mode
map('x', 'K', ':move \'<-2<CR>gv-gv\'')
map('x', 'J', ':move \'>+1<CR>gv-gv\'')

-- move lines normal mode
map('n', 'J', 'ddp')
map('n', 'K', 'ddkP')

-- duplicate line
map('i', '<C-d>', '<ESC>yypi')
map('n', '<C-d>', 'yyp')

-- lsp
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

-- telescope
map('n', 'tt', ':Telescope ')
map('n', '<C-t>', '<cmd>lua require(\'telescope.builtin\').find_files()<CR>')   -- files
map('n', '<C-y>', '<cmd>lua require(\'telescope.builtin\').file_browser()<CR>') -- file browser
map('n', '<C-b>', '<cmd>lua require(\'telescope.builtin\').buffers()<CR>')      -- buffers

map('n', 'ty', '<cmd>lua require(\'telescope.builtin\').treesitter()<CR>')      -- treesitter
map('n', '<C-r>', '<cmd>lua require(\'telescope.builtin\').live_grep()<CR>')    -- ripgrep git files
map('n', 'tr', '<cmd>lua require(\'telescope.builtin\').grep_string()<CR>')     -- ripgrep all files

map('n', 'gs', '<cmd>lua require(\'telescope.builtin\').git_status()<CR>')      -- git status
map('n', 'gc', '<cmd>lua require(\'telescope.builtin\').git_commits()<CR>')     -- git commits
map('n', 'gb', '<cmd>lua require(\'telescope.builtin\').git_branches()<CR>')    -- git branches
map('n', 'gv', '<cmd>lua require(\'telescope.builtin\').git_bcommits()<CR>')    -- git branch preview

map('n', '<C-m>', '<cmd>lua require(\'telescope.builtin\').marks()<CR>')        -- marks
map('n', '<C-p>', '<cmd>lua require(\'telescope.builtin\').registers()<CR>')    -- registers
map('n', 'tk', '<cmd>lua require(\'telescope.builtin\').keymaps()<CR>')         -- keymaps
map('n', 'tm', '<cmd>lua require(\'telescope.builtin\').man_pages()<CR>')       -- man pages
map('n', 'tc', '<cmd>lua require(\'telescope.builtin\').commands()<CR>')        -- commands

-- barbar
map('n', '<TAB>', ':BufferNext<CR>')                                            -- next tab
map('n', '<S-TAB>', ':BufferPrevious<CR>')                                      -- previous tab
map('n', '<C-]>', ':BufferMoveNext<CR>')                                        -- move next tab
map('n', '<C-[>', ':BufferMovePrevious<CR>')                                    -- move previous tab

map('n', '<C-f>', ':FZF<CR>')                                                   -- fuzzy finder

