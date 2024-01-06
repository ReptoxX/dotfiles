vim.filetype.add({
  extension = { templ = "templ" },
})

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  pattern = "*.templ",
  desc = "Run compiler on save",
  callback = function()
    local file_name = vim.api.nvim_buf_get_name(0)
    vim.cmd("silent !templ generate -f " .. file_name)
  end,
})

return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        templ = { "templ" },
      },
      formatters = {
        templ = {
          function()
            return {
              exe = "templ",
              args = { "fmt", vim.api.nvim_buf_get_name(0) },
              stdin = false,
            }
          end,
        },
      },
    },
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = {
          hide_by_pattern = {
            "*_templ.go",
          },
        },
      },
    },
  },
}
