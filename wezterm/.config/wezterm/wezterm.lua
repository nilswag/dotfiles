local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.color_scheme = "Gruvbox Dark (Gogh)"

config.font_size = 18
config.font = wezterm.font("UbuntuMono Nerd Font Mono")

config.enable_tab_bar = false
config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}


config.enable_wayland = false


return config
