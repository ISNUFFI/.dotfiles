local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.background = {
    {
        source = {
            File = "/home/snuff/wallpapers/island.jpg"
        },
        hsb = {
            brightness = 0.05,
            hue = 1.0,
            saturation = 1.2,
        },
    }
}

config.window_padding = {
    top = 0,
    bottom = 0,
}

config.color_scheme = 'rose-pine'
config.font = wezterm.font('JetBrains Mono', { weight = 'Bold', italic = false })

return config
