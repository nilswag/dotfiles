-- config initialization
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

-- config.background = {
--  {
--    source = {
--      File = "/home/nils/.config/wezterm/wallpaper.jpg"
--    },
--    hsb = { brightness = 0.075 }
--  }
-- }
config.window_background_opacity = 0.9
config.kde_window_background_blur = true

config.initial_cols = 90
config.initial_rows = 30

return config
