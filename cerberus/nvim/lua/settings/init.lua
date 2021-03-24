
-------------------- settings -------------------------------
cmd('set iskeyword+=-')                                       -- treat dash separated words as a word text object"
cmd('set shortmess+=c')                                       -- Don't pass messages to |ins-completion-menu|.
opt('o', 'hidden', true)                                      -- Required to keep multiple buffers open multiple buffers
opt('w', 'wrap', false)                                       -- Display long lines as just one line
cmd('set whichwrap+=<,>,[,],h,l')
opt('o', 'pumheight', 10)                                     -- Makes popup menu smaller
opt('o', 'fileencoding', "utf-8")                             -- The encoding written to file
opt('o', 'cmdheight', 2)                                      -- More space for displaying messages
opt('o', 'mouse', "a")                                        -- Enable your mouse
opt('o', 'splitbelow', true)                                  -- Horizontal splits will automatically be below
opt('o', 'termguicolors', true)
opt('o', 'splitright', true)                                  -- Vertical splits will automatically be to the right
opt('o', 't_Co', "256")                                       -- Support 256 colors
opt('o', 'conceallevel', 0)                                   -- So that I can see `` in markdown files
cmd('set ts=2')                                               -- Insert 2 spaces for a tab
cmd('set sw=2')                                               -- Change the number of space characters inserted for indentation
opt('b', 'expandtab', true)                                   -- Converts tabs to spaces
opt('b', 'smartindent', true)                                 -- Makes indenting smart
opt('w', 'number', true)
opt('w', 'cursorline', true)                                  -- Enable highlighting of the current line
opt('o', 'showtabline', 2)                                    -- Always show tabs
opt('o', 'showmode', true)                                    -- We don't need to see things like                                        -- INSERT -- anymore
opt('o', 'backup', false)                                     -- This is recommended by coc
opt('o', 'writebackup', false)                                -- This is recommended by coc
opt('w', 'signcolumn', "yes")                                 -- Always show the signcolumn, otherwise it would shift the text each time
opt('o', 'updatetime', 300)                                   -- Faster completion
opt('o', 'timeoutlen', 500)                                   -- By default timeoutlen is 1000 ms
opt('o', 'clipboard', "unnamedplus")                          -- Copy paste between vim and everything else
opt('o', 'guifont', "JetBrainsMono\\ Nerd\\ Font\\ Mono:h18")


cmd('set formatoptions-=cro')                                 -- Stop newline continution of comments
cmd('set guicursor=')                                         -- patch cursor change

-- cmd 'autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o'
