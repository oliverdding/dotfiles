local utils = require("utils")

local cfg = {
	max_fps = 120,
	window_close_confirmation = "NeverPrompt",
	check_for_updates = false,
	automatically_reload_config = true,
	scrollback_lines = 9999,
}

cfg = utils.merge(cfg, require("configs/appearance"))
cfg = utils.merge(cfg, require("configs/fonts"))
cfg = utils.merge(cfg, require("configs/keys"))

return cfg
