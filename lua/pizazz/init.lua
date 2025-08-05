local palette = require("pizazz.palette")
local get_theme = require("pizazz.get_theme")

local M = {}

M.dark = palette.dark
M.light = palette.light

function M.load(flavor)
	local colors = flavor == "light" and palette.light or palette.dark
	get_theme(colors)
end

return M