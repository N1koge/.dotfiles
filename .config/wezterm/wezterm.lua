local wezterm  = require 'wezterm'

keys = {
  {
    key = '+',
    mods = 'CMD|SHIFT', 
    action = wezterm.action.SplitHorizontal {
      domain = 'CurrentPaneDomain'
    }
  },
  {
    key = '_',
    mods = 'CMD|SHIFT', 
    action = wezterm.action.SplitVertical {
      domain = 'CurrentPaneDomain'
    }
  },
  {
    key = 'w',
    mods = 'CMD|SHIFT', 
    action = wezterm.action.CloseCurrentPane {
      confirm = true
    }
  },
  {
    key = '{',
    mods = 'SHIFT|ALT',
    action = wezterm.action.MoveTabRelative(-1),
  },
  {
    key = '}',
    mods = 'SHIFT|ALT',
    action = wezterm.action.MoveTabRelative(1),
  }
}

colors = {
  -- 44m
  background = 'Blue'
}

return {
  font = wezterm.font('FiraCode Nerd Font Mono'),
  harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' },
  use_ime = true,
  color_scheme = 'nightfox',
  window_background_opacity = 0.8,
  -- colors = colors,
  keys = keys
}
