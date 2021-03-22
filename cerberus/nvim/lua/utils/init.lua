local function define_augroups(definitions) -- {{{1
    -- Create autocommand groups based on the passed definitions
    --
    -- The key will be the name of the group, and each definition
    -- within the group should have:
    --    1. Trigger
    --    2. Pattern
    --    3. Text
    -- just like how they would normally be defined from Vim itself
    for group_name, definition in pairs(definitions) do
        vim.cmd('augroup ' .. group_name)
        vim.cmd('autocmd!')

        for _, def in pairs(definition) do
            local command = table.concat(vim.tbl_flatten {'autocmd', def}, ' ')
            vim.cmd(command)
        end

        vim.cmd('augroup END')
    end
end

define_augroups(
    {_general_settings = {
            {'TextYankPost', '*', 'lua require(\'vim.highlight\').on_yank({higroup = \'IncSearch\', timeout = 200})'},
        },
    }
)



-------------------- HELPERS -------------------------------
cmd = vim.cmd  -- to execute Vim commands e.g. cmd('pwd')
fn = vim.fn    -- to call Vim functions e.g. fn.bufnr()
g = vim.g      -- a table to access global variables
scopes = {o = vim.o, b = vim.bo, w = vim.wo}

function opt(scope, key, value)
  scopes[scope][key] = value
  if scope ~= 'o' then scopes['o'][key] = value end
end

function map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end
