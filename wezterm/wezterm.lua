local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.background = {
    {
        source = {
            File = "/home/snuff/wallpapers/island.jpg"
        },
        hsb = {
            brightness = 0.2,
            hue = 1.0,
            saturation = 1.2,
        },
    }
}

config.color_scheme = 'rose-pine'
config.font = wezterm.font('JetBrains Mono', { weight = 'Bold', italic = false })

return config
