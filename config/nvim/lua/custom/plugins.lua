local plugins = {
  {

    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- defaults
        "vim",
        "lua",

        -- web dev
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "json",
      }
    }
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "rust-analyzer",
        "prettierd",
        "typescript-language-server",
        "tailwindcss-language-server",
        "html-lsp",
        "emmet-ls"

      },
      automatic_installation = true
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
      -- nvim_tree_respect_buf_cwd = 1
    }
  },
  {
    "christoomey/vim-tmux-navigator",
    lazy = false
  },
  {
    "windwp/nvim-ts-autotag",
    ft = { "typescriptreact", "tsx" },
    config = function()
      require("nvim-ts-autotag").setup()
    end
  }
}

return plugins
