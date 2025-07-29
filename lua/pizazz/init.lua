local lush = require("lush")
local palette = require("pizazz.palette")
local get_theme = require("pizazz.get_theme")

return {
	dark = get_theme(palette.dark),
	light = get_theme(palette.light),
	load = function(flavor)
		local mod = require("pizazz")
		local theme = flavor == "light" and mod.light or mod.dark
		lush(theme)
	end,
}
