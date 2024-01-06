-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Automatically run the templ compiler on save
vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  pattern = "*.templ",
  desc = "Run compiler on save",
  callback = function()
    local file_name = vim.api.nvim_buf_get_name(0)
    vim.cmd("silent !templ generate -f " .. file_name)
  end,
})
