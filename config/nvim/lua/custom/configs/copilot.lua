local options = {}

options.panel = {
  enabled = true,
  auto_refresh = false,
  keymap = {
    jump_prev = "[[",
    jump_next = "]]",
    accept = "<CR>",
    refresh = "gr",
    open = "<M-CR>"
  },
  layout = {
    position = "bottom", -- | top | left | right
    ratio = 0.4
  },
}

options.suggestion = {
  enabled = true,
  auto_trigger = false,
  debounce = 75,
  keymap = {
    accept = "<M-l>",
    accept_word = false,
    accept_line = false,
    next = "<M-]>",
    prev = "<M-[>",
    dismiss = "<C-]>",
  },
}

options.filetypes = {
  yaml = true,
  markdown = false,
  help = false,
  gitcommit = false,
  gitrebase = false,
  hgcommit = false,
  svn = false,
  cvs = false,
  ["."] = false,
}

options.copilot_node_command = 'node'
options.server_opts_overrides = {}

return options