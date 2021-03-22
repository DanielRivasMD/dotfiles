

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

-- duplicate line
map('i', 'kk', '<ESC>yypi')
map('n', 'kk', 'yyp')

-- lsp
map('n', 'gk,', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>')
map('n', 'gj;', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>')
map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
map('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>')
map('n', 'gl', '<cmd>lua vim.lsp.buf.hover()<CR>')
map('n', 'gf', '<cmd>lua vim.lsp.buf.rename()<CR>')
map('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>')
map('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>')
map('n', 'gh', '<cmd>lua vim.lsp.buf.signature_help()<CR>')
map('n', 'gs', '<cmd>lua vim.lsp.buf.document_symbol()<CR>')
