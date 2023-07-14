local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end



config.color_scheme = 'catppuccin-frappe'
config.font = wezterm.font(
  "JetbrainsMono Nerd Font Mono",
  { weight = "Regular" }
)
config.font_size = 14
config.freetype_load_target = "Normal"

return config
