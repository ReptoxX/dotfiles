return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- add custom parsers
      vim.list_extend(opts.ensure_installed, {
        "html",
        "templ",
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        templ = {},
        html = {
          filetypes = { "html", "templ" },
          settings = {
            html = {
              autoClosingTags = true,
              autoCreateQuotes = true,
              suggest = {
                html5 = true,
              },
            },
          },
        },
        tailwindcss = {
          filetypes = { "html", "css", "javascript", "typescriptreact", "javascriptreact", "typescript.tsx", "templ" },
          init_options = {
            userLanguages = {
              html = "html",
              css = "css",
              javascript = "javascript",
              typescript = "javascript",
              javascriptreact = "javascript",
              typescriptreact = "javascript",
              ["typescript.tsx"] = "javascript",
              templ = "html",
            },
          },
        },
        htmx = {
          filetypes = { "html", "templ" },
        },
        emmet_ls = {
          filetypes = {
            "css",
            "eruby",
            "html",
            "javascript",
            "javascriptreact",
            "less",
            "sass",
            "scss",
            "svelte",
            "pug",
            "typescriptreact",
            "vue",
            "templ",
          },
        },
      },
    },
  },
}
