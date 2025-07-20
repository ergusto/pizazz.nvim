---@diagnostic disable: undefined-global
local lush = require("lush")
local hsl = lush.hsl

local palette = {
	dark = {
		bg = hsl(220, 16, 14),
		bg_alt = hsl(220, 18, 18),
		fg = hsl(210, 20, 85),
		accent = hsl(200, 60, 70),
		blue = hsl(210, 60, 60),
		blue_bright = hsl(210, 85, 75),
		blue_vibrant = hsl(210, 30, 50),
		cyan = hsl(190, 35, 60),
		green = hsl(100, 30, 60),
		yellow = hsl(40, 80, 60),
		red = hsl(0, 60, 55),
		dusty_yellow = hsl(45, 40, 65),
		comment = hsl(215, 13, 50),
		border = hsl(220, 15, 45),
		key = hsl(35, 40, 55),
		env = hsl(10, 50, 60),
		sidebar_fg = hsl(225, 20, 75),
		sidebar_dim = hsl(220, 15, 35),
	},
	light = {
		bg = hsl(0, 0, 98),
		bg_alt = hsl(0, 0, 94),
		fg = hsl(225, 15, 15),
		accent = hsl(200, 55, 45),
		blue = hsl(210, 50, 35),
		blue_bright = hsl(210, 70, 45),
		blue_vibrant = hsl(210, 30, 30),
		cyan = hsl(190, 35, 40),
		green = hsl(100, 35, 45),
		yellow = hsl(40, 70, 40),
		red = hsl(0, 65, 50),
		dusty_yellow = hsl(45, 45, 40),
		comment = hsl(220, 12, 60),
		border = hsl(225, 10, 75),
		key = hsl(35, 55, 45),
		env = hsl(10, 55, 60),
		sidebar_fg = hsl(225, 25, 30),
		sidebar_dim = hsl(225, 20, 85),
	},
}

local function get_theme(p)
	return lush(function()
		return {
			Normal({ fg = p.fg, bg = p.bg }),
			NormalFloat({ fg = p.fg, bg = p.bg_alt }),
			Comment({ fg = p.comment, gui = "italic" }),
			Keyword({ fg = p.accent }),
			Function({ fg = p.blue }),
			Identifier({ fg = p.cyan }),
			String({ fg = p.green }),
			Number({ fg = p.key }),
			Constant({ fg = p.key }),
			Type({ fg = p.cyan }),
			Statement({ fg = p.accent }),
			Conditional({ fg = p.accent }),
			Repeat({ fg = p.accent }),
			Operator({ fg = p.fg }),
			PreProc({ fg = p.blue }),
			Include({ fg = p.accent }),
			Exception({ fg = p.red }),

			Error({ fg = p.red, gui = "bold" }),
			WarningMsg({ fg = p.dusty_yellow, gui = "bold" }),
			Todo({ fg = p.yellow, gui = "bold" }),

			LineNr({ fg = p.comment }),
			CursorLineNr({ fg = p.accent }),
			VertSplit({ fg = p.border }),
			StatusLine({ fg = p.fg, bg = p.bg_alt }),
			StatusLineNC({ fg = p.comment, bg = p.bg }),

			Pmenu({ fg = p.fg, bg = p.bg_alt }),
			PmenuSel({ fg = p.bg, bg = p.accent }),

			Visual({ bg = p.bg_alt.lighten(10) }),
			CursorLine({ bg = p.bg_alt.lighten(5) }),
			CursorColumn({ bg = p.bg_alt.lighten(5) }),

			GitSignsAdd({ fg = p.green }),
			GitSignsChange({ fg = p.blue_vibrant }),
			GitSignsDelete({ fg = p.red }),
			DiffChange({ fg = p.blue_vibrant }),
			DiffText({ fg = p.blue_vibrant }),

			DiagnosticError({ fg = p.red }),
			DiagnosticWarn({ fg = p.dusty_yellow }),
			DiagnosticInfo({ fg = p.blue }),
			DiagnosticHint({ fg = p.comment }),

			["@function"] = { fg = p.blue },
			["@keyword"] = { fg = p.accent },
			["@string"] = { fg = p.green },
			["@variable"] = { fg = p.fg },
			["@constant"] = { fg = p.key },
			["@type"] = { fg = p.cyan },
			["@comment"] = { fg = p.comment, gui = "italic" },
			["@number"] = { fg = p.key },
			["@operator"] = { fg = p.fg },
			["@field"] = { fg = p.key },
			["@parameter"] = { fg = p.fg, gui = "italic" },
			["@tag"] = { fg = p.blue_bright },
			["@tag.attribute"] = { fg = p.blue_bright },
			["@constructor"] = { fg = p.blue_bright },

			TelescopeBorder({ fg = p.border }),
			TelescopePromptBorder({ fg = p.border }),
			TelescopeResultsBorder({ fg = p.border }),
			TelescopePreviewBorder({ fg = p.border }),

			TelescopePromptTitle({ fg = p.accent }),
			TelescopeResultsTitle({ fg = p.comment }),
			TelescopePreviewTitle({ fg = p.comment }),

			TelescopeMatching({ fg = p.accent, gui = "bold" }),
			TelescopeSelection({ bg = p.bg_alt.lighten(5) }),

			NormalNC({ fg = p.sidebar_fg, bg = p.bg_alt }),
			Directory({ fg = p.blue }),
			Special({ fg = p.blue_bright }),
			WinSeparator({ fg = p.border, bg = p.bg }),

			TabLine({ fg = p.comment, bg = p.bg_alt }),
			TabLineFill({ fg = p.comment, bg = p.bg_alt }),
			TabLineSel({ fg = p.bg, bg = p.accent }),
			WinBar({ fg = p.comment, bg = p.bg_alt }),
			WinBarNC({ fg = p.comment.darken(15), bg = p.bg }),

			IndentBlanklineChar({ fg = p.border.darken(10) }),
		}
	end)
end

return {
	dark = get_theme(palette.dark),
	light = get_theme(palette.light),
	load = function(flavor)
		local theme = flavor == "light" and require("pizzaz").light or require("pizzaz").dark
		lush(theme)
	end,
}
