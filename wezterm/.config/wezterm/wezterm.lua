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

config.background = {
  {
    source = {
      File = "/home/nils/.config/wezterm/wallpaper.jpg"
    },
    hsb = { brightness = 0.075 }
  }
}

config.initial_cols = 90
config.initial_rows = 30

config.leader = { key = "LeftAlt", timeout_milliseconds = 1000 }
config.keys = {
  {
    key = "q",
    mods = "LEADER",
    action = wezterm.action.CloseCurrentPane({ confirm = true })
  },
  {
    key = "w",
    mods = "LEADER",
    action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" })
  },
  {
    key = "s",
    mods = "LEADER",
    action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" })
  }
}

return config
