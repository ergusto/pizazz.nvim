local lush = require("lush")
local palette = require("pizazz.palette")
local get_theme = require("pizazz.get_theme")

return {
	dark = get_theme(palette.dark),
	light = get_theme(palette.light),
	load = function(flavor)
		local theme = flavor == "light" and require("pizzaz").light or require("pizzaz").dark
		lush(theme)
	end,
}
