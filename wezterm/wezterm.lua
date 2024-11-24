local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.audible_bell = "Disabled"

config.window_background_opacity = 1

config.window_padding = {
    top = 0,
    bottom = 0,
}

config.color_scheme = 'rose-pine'
config.font = wezterm.font('JetBrains Mono', { weight = 'Bold', italic = false })

-- wezterm.on('increase-opacity', function (window, _)
--     local overrides = window:get_config_overrides() or {}
--     if overrides.window_background_opacity < 1 then
--         overrides.window_background_opacity = overrides.window_background_opacity + 0.1
--     end
--     window:set_config_overrides(overrides)
-- end)

-- wezterm.on('decrease-opacity', function (window, _)
--     local overrides = window:get_config_overrides() or {}
--     if overrides.window_background_opacity > 0 then
--         overrides.window_background_opacity = overrides.window_background_opacity - 0.1
--     end
--     window:set_config_overrides(overrides)
-- end)

wezterm.on('toggle-opacity', function(window, pane)
  local overrides = window:get_config_overrides() or {}
  if not overrides.window_background_opacity then
    overrides.window_background_opacity = 0.5
  else
    overrides.window_background_opacity = nil
  end
  window:set_config_overrides(overrides)
end)

config.keys = {
    {
      key = 'B',
      mods = 'CTRL',
      action = wezterm.action.EmitEvent 'toggle-opacity',
    },
}

return config
