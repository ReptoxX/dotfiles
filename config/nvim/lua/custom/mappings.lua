local M = {}

M.disabled = {
  n = {
    ["<leader>s"] = ""
  }
}

M.general = {
  n = {
    ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "Window left" },
    ["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "Window right" },
    ["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", "Window down" },
    ["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>", "Window up" }
  }
}


M.custom = {
  n = {
    ["<leader>s"] = {":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>", "Replace hovered word"},
    ["<a-key><esc>"] = {":%s/\\/", "do something"}
  }
}

return M
