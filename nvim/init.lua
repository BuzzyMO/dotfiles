require("config.lazy")

vim.api.nvim_set_keymap('i', 'jk', '<Esc>', { noremap = true, silent = true })
vim.cmd[[colorscheme tokyonight]]
