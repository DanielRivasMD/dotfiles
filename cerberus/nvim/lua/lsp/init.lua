
local lsp = require('lspconfig')
for ls, cfg in pairs({
  bashls = {},
  rls = {},
  julials = {},
  gopls = {},
}) do lsp[ls].setup(cfg) end
