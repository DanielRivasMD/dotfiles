----------------------------------------------------------------------------------------------------

vim.g.startify_custom_header = {
    '        _   ___    ________          __   ', '       / | / / |  / / ____/___  ____/ /__ ',
    '      /  |/ /| | / / /   / __ \\/ __  / _ \\', '     / /|  / | |/ / /___/ /_/ / /_/ /  __/',
    '    /_/ |_/  |___/\\____/\\____/\\__,_/\\___/ '
}

vim.g.webdevicons_enable_startify = 1
vim.g.startify_enable_special = 0
vim.g.startify_session_dir = '~/.config/nvim/session'
vim.g.startify_session_autoload = 1
vim.g.startify_session_delete_buffers = 1
vim.g.startify_change_to_vcs_root = 1
vim.g.startify_fortune_use_unicode = 1
vim.g.startify_session_persistence = 1

vim.api.nvim_exec(
  'let startify_bookmarks = [ { \'G\': \'/Users/drivas/Factorem/WebSurf/Archive/Notes/github.md\' }, { \'K\': \'/Users/drivas/.archive/cerberus/khal/khalNew.sh\' }, { \'Z\': \'/Users/drivas/.archive/ianus/shell/zsh/vernacular_zshrc.sh\' },]',
  true)

vim.api.nvim_exec(
    'let startify_lists = [ { \'type\': \'dir\', \'header\': [\' MRU \'. getcwd()] }, { \'type\': \'files\', \'header\': [\' MRU\'] }, { \'type\': \'sessions\', \'header\': [\' Sessions\'] }, { \'type\': \'bookmarks\', \'header\': [\' Bookmarks\'] }, { \'type\': \'commands\', \'header\': [\' Commands\'] }, ]',
    true)

vim.cmd([[
function! StartifyEntryFormat()
  return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
endfunction
]])

----------------------------------------------------------------------------------------------------
