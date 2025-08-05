local M = {}

-- Convert hex color to RGB values
local function hex_to_rgb(hex)
	hex = hex:gsub("#", "")
	return tonumber("0x" .. hex:sub(1, 2)), tonumber("0x" .. hex:sub(3, 4)), tonumber("0x" .. hex:sub(5, 6))
end

-- Convert RGB values to hex color
local function rgb_to_hex(r, g, b)
	return string.format("#%02X%02X%02X", math.floor(r), math.floor(g), math.floor(b))
end

-- Lighten a color by a percentage (0.0 to 1.0)
function M.lighten(hex_color, amount)
	local r, g, b = hex_to_rgb(hex_color)
	r = math.min(255, r + (255 - r) * amount)
	g = math.min(255, g + (255 - g) * amount)
	b = math.min(255, b + (255 - b) * amount)
	return rgb_to_hex(r, g, b)
end

-- Darken a color by a percentage (0.0 to 1.0)
function M.darken(hex_color, amount)
	local r, g, b = hex_to_rgb(hex_color)
	r = math.max(0, r - r * amount)
	g = math.max(0, g - g * amount)
	b = math.max(0, b - b * amount)
	return rgb_to_hex(r, g, b)
end

-- Adjust color brightness based on theme (lighten for dark, darken for light)
function M.adjust_for_theme(hex_color, amount, is_dark_theme)
	if is_dark_theme then
		return M.lighten(hex_color, amount)
	else
		return M.darken(hex_color, amount)
	end
end

return M