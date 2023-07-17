local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end


config.color_scheme = 'catppuccin-frappe'
config.font = wezterm.font(
  "JetBrainsMono Nerd Font",
  { weight = "Regular" }
)
config.font_size = 12
config.freetype_load_target = "Normal"

config.window_frame = {
  font = wezterm.font("JetBrainsMono Nerd Font", { weight = "Regular" }),
  font_size = 8
}

config.window_padding = {
  left = 0,
  right = 0,
  top = 2,
  bottom = 0
}

config.hide_tab_bar_if_only_one_tab = true

-- Windows specific
-- config.default_domain = "WSL:Ubuntu-22.04"

return config
