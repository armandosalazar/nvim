require('plugins')

-- vim.cmd[[let g:indent_blankline_char = '▏']]

vim.api.nvim_set_keymap('n', '<C-b>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
