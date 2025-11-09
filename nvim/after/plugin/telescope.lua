require('telescope').setup {
    extensions = {
        fzf = {}
    },
    defaults = {
        disable_devicons = true,
        file_ignore_patterns = { "out", "build" }
    }
}
require('telescope')

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<Space>pf', builtin.find_files, {})
vim.keymap.set('n', '<Space>pg', builtin.live_grep, {})
vim.keymap.set('n', '<Space>pt', builtin.treesitter, {})
