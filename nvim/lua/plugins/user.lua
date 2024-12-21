---@type LazySpec
return {
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup {
        -- Configuration here, or leave empty to use defaults
      }
    end,
  },
  {
    "echasnovski/mini.align",
    version = "*",
    config = function() require("mini.align").setup() end,
  },
  -- themes
  {
    "rebelot/kanagawa.nvim",
    version = "*",
    config = function() end,
  },
  {
    "Shatur/neovim-ayu",
    version = "*",
    config = function()
      require("ayu").setup {
        terminal = true,
      }
    end,
  },
}
