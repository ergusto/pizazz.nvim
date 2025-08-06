local palette = require("estuary.palette")
local get_theme = require("estuary.get_theme")

local M = {}

M.dark = palette.dark
M.light = palette.light

function M.load(flavor)
	local colors = flavor == "light" and palette.light or palette.dark
	get_theme(colors)
end

return M