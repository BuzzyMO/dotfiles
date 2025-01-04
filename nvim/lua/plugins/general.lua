return {	
  {  
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
      vim.cmd([[colorscheme tokyonight]])
    end,
  },
  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "sindrets/diffview.nvim",        -- Diff integration
      "nvim-telescope/telescope.nvim"
    },
    config = true
  },
  {
    "lewis6991/gitsigns.nvim",
    opts = {}
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {}
  },
  {
    "folke/trouble.nvim",
    opts = {},
    cmd = "Trouble"
  },
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {},
    keys = {
      {
	"<leader>?",
	function()
	  require("which-key").show({ global = false })
	end,
	desc = "Buffer Local Keymaps (which-key)",
      },
    }
  }
}
