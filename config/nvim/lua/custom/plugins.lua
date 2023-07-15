local plugins = {
  {

    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "rust-analyzer",
        "prettier"
      }
    }
  },
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup(
        require "custom.configs.copilot"
      )
    end
  },
  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      nvim_tree_respect_buf_cwd = 1
    }
  }
}

return plugins
