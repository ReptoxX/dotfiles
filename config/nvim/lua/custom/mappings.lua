local M = {}

M.disabled = {
  n = {
    ["<leader>s"] = ""
  }
}

M.custom = {
  n = {
    ["<leader>s"] = {":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>", "Replace hovered word"}
  }
}

return M
