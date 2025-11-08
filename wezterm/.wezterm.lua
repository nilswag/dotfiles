local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.color_scheme = "GruvboxDarkHard"

config.font_size = 18
config.font = wezterm.font("UbuntuMono Nerd Font Mono")

config.enable_tab_bar = false

config.enable_wayland = false

return config
