return {	
  {  
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {}
  },
  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "sindrets/diffview.nvim",        -- Diff integration
      "nvim-telescope/telescope.nvim"
    },
    config = true
  }
}
