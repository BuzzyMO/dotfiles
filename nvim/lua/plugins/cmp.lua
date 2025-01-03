return {
  "hrsh7th/nvim-cmp",
  event = "InsertEnter",
  dependencies = {
    { "hrsh7th/cmp-nvim-lsp" },
    { "hrsh7th/cmp-vsnip" },
    { "hrsh7th/vim-vsnip" }
  },
  opts = function()
    local cmp = require("cmp")
    local conf = {
      sources = {
        { name = "nvim_lsp" },
        { name = "vsnip" },
      },
      snippet = {
        expand = function(args)
          -- Comes from vsnip
          vim.fn["vsnip#anonymous"](args.body)
        end,
      },
      mapping = cmp.mapping.preset.insert({
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
	["<C-e>"] = cmp.mapping.abort()
      })
    }
    return conf
  end
}
