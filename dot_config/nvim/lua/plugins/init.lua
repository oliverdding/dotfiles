return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    config = function()
      require "configs.conform"
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = function()
      require "configs.mason"
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function()
      require "configs.treesitter"
    end,
  },
  {
    "lewis6991/gitsigns.nvim",
    opts = function()
      require "configs.gitsigns"
    end,
  },
  -- { -- enabled for codium
  --   "hrsh7th/nvim-cmp",
  --   opts = function()
  --     require "configs.cmp"
  --   end,
  -- },
  {
    "nvim-tree/nvim-tree.lua",
    opts = function()
      require "configs.nvimtree"
    end,
  },
}
