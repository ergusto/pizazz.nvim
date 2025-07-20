---@diagnostic disable: undefined-global
local lush = require("lush")
local hsl = lush.hsl

local palette = {
	dark = {
		bg_main = hsl(220, 16, 14),
		bg_alt = hsl(220, 18, 18),
		text_primary = hsl(210, 20, 85),
		text_accent = hsl(200, 60, 70),
		text_number = hsl(35, 40, 55),
		text_muted = hsl(215, 13, 50),
		text_info = hsl(190, 35, 60),
		text_success = hsl(100, 30, 60),
		text_warning = hsl(45, 40, 65),
		text_error = hsl(0, 60, 55),
		border = hsl(220, 15, 45),
		sidebar_fg = hsl(225, 20, 75),
		sidebar_dim = hsl(220, 15, 35),
		tag_blue = hsl(210, 85, 75),
		tag_blue_alt = hsl(210, 60, 60),
		tag_blue_dark = hsl(210, 30, 50),
	},
	light = {
		bg_main = hsl(0, 0, 98),
		bg_alt = hsl(0, 0, 92),
		text_primary = hsl(220, 25, 15), -- darker for better contrast
		text_accent = hsl(215, 65, 35), -- slightly deeper blue
		text_number = hsl(35, 40, 30), -- darker brown
		text_muted = hsl(220, 10, 45), -- less washed out
		text_info = hsl(190, 45, 35), -- more saturation
		text_success = hsl(100, 45, 30), -- earthy green
		text_warning = hsl(45, 40, 35), -- golden but visible
		text_error = hsl(0, 65, 30), -- deep brick red

		border = hsl(220, 10, 65), -- soft neutral
		sidebar_fg = hsl(220, 20, 25), -- low brightness neutral
		sidebar_dim = hsl(200, 10, 85), -- very light gray

		tag_blue = hsl(210, 85, 40), -- punchy tag
		tag_blue_alt = hsl(210, 60, 35), -- muted alternative
		tag_blue_dark = hsl(210, 30, 30), -- even more muted
	},
}

local function get_theme(p)
	return lush(function()
		return {
			Normal({ fg = p.text_primary, bg = p.bg_main }),
			NormalFloat({ fg = p.text_primary, bg = p.bg_alt }),
			Comment({ fg = p.text_muted, gui = "italic" }),
			Keyword({ fg = p.text_accent }),
			Function({ fg = p.tag_blue_alt }),
			Identifier({ fg = p.text_info }),
			String({ fg = p.text_success }),
			Number({ fg = p.text_number }),
			Constant({ fg = p.text_number }),
			Type({ fg = p.text_info }),
			Statement({ fg = p.text_accent }),
			Conditional({ fg = p.text_accent }),
			Repeat({ fg = p.text_accent }),
			Operator({ fg = p.text_primary }),
			PreProc({ fg = p.tag_blue_alt }),
			Include({ fg = p.text_accent }),
			Exception({ fg = p.text_error }),

			Error({ fg = p.text_error, gui = "bold" }),
			WarningMsg({ fg = p.text_warning, gui = "bold" }),
			Todo({ fg = p.text_warning, gui = "bold" }),

			LineNr({ fg = p.text_muted }),
			CursorLineNr({ fg = p.text_accent }),
			VertSplit({ fg = p.border }),
			StatusLine({ fg = p.text_primary, bg = p.bg_alt }),
			StatusLineNC({ fg = p.text_muted, bg = p.bg_main }),

			Pmenu({ fg = p.text_primary, bg = p.bg_alt }),
			PmenuSel({ fg = p.bg_main, bg = p.text_accent }),

			Visual({ bg = p.bg_alt.lighten(10) }),
			CursorLine({ bg = p.bg_alt.lighten(5) }),
			CursorColumn({ bg = p.bg_alt.lighten(5) }),

			GitSignsAdd({ fg = p.text_success }),
			GitSignsChange({ fg = p.tag_blue_dark }),
			GitSignsDelete({ fg = p.text_error }),
			DiffChange({ fg = p.tag_blue_dark }),
			DiffText({ fg = p.tag_blue_dark }),

			DiagnosticError({ fg = p.text_error }),
			DiagnosticWarn({ fg = p.text_warning }),
			DiagnosticInfo({ fg = p.tag_blue_alt }),
			DiagnosticHint({ fg = p.text_muted }),

			["@function"] = { fg = p.tag_blue_alt },
			["@keyword"] = { fg = p.text_accent },
			["@string"] = { fg = p.text_success },
			["@variable"] = { fg = p.text_primary },
			["@constant"] = { fg = p.text_number },
			["@type"] = { fg = p.text_info },
			["@comment"] = { fg = p.text_muted, gui = "italic" },
			["@number"] = { fg = p.text_number },
			["@operator"] = { fg = p.text_primary },
			["@field"] = { fg = p.text_number },
			["@parameter"] = { fg = p.text_primary, gui = "italic" },
			["@tag"] = { fg = p.tag_blue },
			["@tag.attribute"] = { fg = p.tag_blue },
			["@constructor"] = { fg = p.tag_blue },

			TelescopeBorder({ fg = p.border }),
			TelescopePromptBorder({ fg = p.border }),
			TelescopeResultsBorder({ fg = p.border }),
			TelescopePreviewBorder({ fg = p.border }),

			TelescopePromptTitle({ fg = p.text_accent }),
			TelescopeResultsTitle({ fg = p.text_muted }),
			TelescopePreviewTitle({ fg = p.text_muted }),

			TelescopeMatching({ fg = p.text_accent, gui = "bold" }),
			TelescopeSelection({ bg = p.bg_alt.lighten(5) }),

			NormalNC({ fg = p.sidebar_fg, bg = p.bg_alt }),
			Directory({ fg = p.tag_blue_alt }),
			Special({ fg = p.tag_blue }),
			WinSeparator({ fg = p.border, bg = p.bg_main }),

			TabLine({ fg = p.text_muted, bg = p.bg_alt }),
			TabLineFill({ fg = p.text_muted, bg = p.bg_alt }),
			TabLineSel({ fg = p.bg_main, bg = p.text_accent }),
			WinBar({ fg = p.text_muted, bg = p.bg_alt }),
			WinBarNC({ fg = p.text_muted.darken(15), bg = p.bg_main }),

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
