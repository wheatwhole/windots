local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.

-- For example, changing the initial geometry for new windows:
config.initial_cols = 120
config.initial_rows = 28

-- or, changing the font size and color scheme.
config.font_size = 13
config.font = wezterm.font({family = "Cascadia Mono", weight = "Bold"})
config.color_scheme = 'Catppuccin Mocha'
config.window_decorations = "RESIZE"
if wezterm.target_triple == 'x86_64-pc-windows-msvc' then
    config.default_prog = { 'pwsh.exe', '-NoLogo' }
end
config.enable_tab_bar = false
config.window_padding = {
  left = 40,
  right = 40,
  top = 40,
  bottom = 20,
}



-- Finally, return the configuration to wezterm:
return config