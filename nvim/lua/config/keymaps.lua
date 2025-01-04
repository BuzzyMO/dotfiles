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
map('<leader>[', ':Neotree toggle<CR>', { desc = 'Open files tree' })
