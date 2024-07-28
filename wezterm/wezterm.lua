local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.window_background_opacity = 1.0

config.color_scheme = 'rose-pine'
config.font = wezterm.font ('JetBrains Mono', {weight = 'Bold', italic = false})

return config
