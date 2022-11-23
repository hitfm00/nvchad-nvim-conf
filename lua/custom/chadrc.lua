-- Just an example, supposed to be placed in /lua/custom/

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.mappings = require "custom.mappings"

M.ui = {
  theme_toggle = { "gruvchad", "catppuccin_latte" },
  theme = "gruvchad",
}

M.plugins = {
  user = {
    ["neovim/nvim-lspconfig"] = {
      config = function()
        require "custom.plugins.lspconfig"
        require "plugins.configs.lspconfig"
      end,
    },
    ["jose-elias-alvarez/null-ls.nvim"] = {
      after = "nvim-lspconfig",
      config = function()
        require "custom.plugins.null-ls"
      end,
    },
  }
}

return M
