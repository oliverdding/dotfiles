local wezterm = require("wezterm")
local cfg = {}

cfg.font = wezterm.font_with_fallback({
	"IosevkaTerm Nerd Font Mono",
	"Noto Serif CJK SC",
	"Symbols Nerd Font Mono",
})
cfg.font_size = 16.0

return cfg
