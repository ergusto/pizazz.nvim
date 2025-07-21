---@diagnostic disable: undefined-global
local lush = require("lush")

return function(p)
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
