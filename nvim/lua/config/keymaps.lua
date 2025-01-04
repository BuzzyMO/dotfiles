local function map(lhs, rhs, opts)
  local default_opts = { noremap = true, silent = true }
  local mode = opts and opts.mode or 'n'  
  if opts then
    opts.mode = nil
    default_opts = vim.tbl_extend('force', default_opts, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, default_opts)
end

-- Disable Keys
map('<leader>', '<nop>')

-- Text
map('jk', '<Esc>', { mode = 'i' })

map('<leader>f', ':Telescope find_files<CR>', { desc = 'Find Files' })
map('<leader>F', ':Telescope live_grep<CR>', { desc = 'Find Text' })
map('<leader>[', ':Neotree toggle<CR>', { desc = 'Open files tree' })

-- Navigation
  -- windows focusing
map('H', '<C-w>h')
map('J', '<C-w>j')
map('K', '<C-w>k')
map('L', '<C-w>l')
  -- tabs
map('<A-h>', ':tabprev<CR>')
map('<A-l>', ':tabnext<CR>')
