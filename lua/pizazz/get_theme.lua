local function apply_highlights(colors)
	-- Basic Vim highlights
	vim.api.nvim_set_hl(0, "Normal", { fg = colors.primary, bg = colors.bg_main })
	vim.api.nvim_set_hl(0, "NormalFloat", { fg = colors.primary, bg = colors.bg_alt })
	vim.api.nvim_set_hl(0, "Comment", { fg = colors.muted, italic = true })
	vim.api.nvim_set_hl(0, "Keyword", { fg = colors.accent })
	vim.api.nvim_set_hl(0, "Function", { fg = colors.function_name })
	vim.api.nvim_set_hl(0, "Identifier", { fg = colors.info })
	vim.api.nvim_set_hl(0, "String", { fg = colors.success })
	vim.api.nvim_set_hl(0, "Number", { fg = colors.number })
	vim.api.nvim_set_hl(0, "Constant", { fg = colors.accent })
	vim.api.nvim_set_hl(0, "Type", { fg = colors.info })
	vim.api.nvim_set_hl(0, "Statement", { fg = colors.accent })
	vim.api.nvim_set_hl(0, "Conditional", { fg = colors.accent })
	vim.api.nvim_set_hl(0, "Repeat", { fg = colors.accent })
	vim.api.nvim_set_hl(0, "Operator", { fg = colors.primary })
	vim.api.nvim_set_hl(0, "Delimiter", { fg = colors.primary })
	vim.api.nvim_set_hl(0, "Special", { fg = colors.accent })
	vim.api.nvim_set_hl(0, "PreProc", { fg = colors.function_name })
	vim.api.nvim_set_hl(0, "Include", { fg = colors.accent })
	vim.api.nvim_set_hl(0, "Exception", { fg = colors.error })

	-- Error and message highlights
	vim.api.nvim_set_hl(0, "Error", { fg = colors.error, bold = true })
	vim.api.nvim_set_hl(0, "ErrorMsg", { fg = colors.error, bold = true })
	vim.api.nvim_set_hl(0, "WarningMsg", { fg = colors.warning, bold = true })
	vim.api.nvim_set_hl(0, "Todo", { fg = colors.warning, bold = true })

	-- Search and selection
	vim.api.nvim_set_hl(0, "Search", { fg = colors.bg_main, bg = colors.warning })
	vim.api.nvim_set_hl(0, "IncSearch", { fg = colors.bg_main, bg = colors.accent })
	vim.api.nvim_set_hl(0, "Substitute", { fg = colors.bg_main, bg = colors.error })

	-- More basic groups
	vim.api.nvim_set_hl(0, "Title", { fg = colors.accent, bold = true })
	vim.api.nvim_set_hl(0, "Question", { fg = colors.success })
	vim.api.nvim_set_hl(0, "ModeMsg", { fg = colors.primary })
	vim.api.nvim_set_hl(0, "MoreMsg", { fg = colors.success })

	-- Window elements
	vim.api.nvim_set_hl(0, "FloatBorder", { fg = colors.border })

	-- Spelling
	vim.api.nvim_set_hl(0, "SpellBad", { fg = colors.error, underline = true })
	vim.api.nvim_set_hl(0, "SpellCap", { fg = colors.warning, underline = true })
	vim.api.nvim_set_hl(0, "SpellLocal", { fg = colors.info, underline = true })
	vim.api.nvim_set_hl(0, "SpellRare", { fg = colors.info, underline = true })

	-- Line numbers and status
	vim.api.nvim_set_hl(0, "LineNr", { fg = colors.muted })
	vim.api.nvim_set_hl(0, "CursorLineNr", { fg = colors.accent })
	vim.api.nvim_set_hl(0, "VertSplit", { fg = colors.border })
	vim.api.nvim_set_hl(0, "StatusLine", { fg = colors.primary, bg = colors.bg_alt })
	vim.api.nvim_set_hl(0, "StatusLineNC", { fg = colors.muted, bg = colors.bg_main })

	-- Popup menu
	vim.api.nvim_set_hl(0, "Pmenu", { fg = colors.primary, bg = colors.bg_alt })
	vim.api.nvim_set_hl(0, "PmenuSel", { fg = colors.bg_main, bg = colors.accent })

	-- Cursor and selection
	vim.api.nvim_set_hl(0, "Cursor", { fg = colors.dimmed, bg = colors.cursor_bg })
	vim.api.nvim_set_hl(0, "Visual", { bg = colors.visual_bg })
	vim.api.nvim_set_hl(0, "CursorLine", { bg = colors.cursor_line })
	vim.api.nvim_set_hl(0, "CursorColumn", { bg = colors.cursor_line })

	-- Git signs
	vim.api.nvim_set_hl(0, "GitSignsAdd", { fg = colors.success })
	vim.api.nvim_set_hl(0, "GitSignsChange", { fg = colors.function_name })
	vim.api.nvim_set_hl(0, "GitSignsDelete", { fg = colors.error })
	vim.api.nvim_set_hl(0, "DiffChange", { fg = colors.function_name })
	vim.api.nvim_set_hl(0, "DiffText", { fg = colors.function_name })

	-- Diagnostics
	vim.api.nvim_set_hl(0, "DiagnosticError", { fg = colors.error })
	vim.api.nvim_set_hl(0, "DiagnosticWarn", { fg = colors.warning })
	vim.api.nvim_set_hl(0, "DiagnosticInfo", { fg = colors.constructor })
	vim.api.nvim_set_hl(0, "DiagnosticHint", { fg = colors.muted })

	-- Core TreeSitter highlights
	vim.api.nvim_set_hl(0, "@function", { fg = colors.function_name })
	vim.api.nvim_set_hl(0, "@function.definition", { fg = colors.function_name })
	vim.api.nvim_set_hl(0, "@function.call", { fg = colors.constructor })
	vim.api.nvim_set_hl(0, "@keyword", { fg = colors.accent })
	vim.api.nvim_set_hl(0, "@keyword.function", { fg = colors.constructor })
	vim.api.nvim_set_hl(0, "@string", { fg = colors.success })
	vim.api.nvim_set_hl(0, "@variable", { fg = colors.info })
	vim.api.nvim_set_hl(0, "@variable.builtin", { fg = colors.accent })
	vim.api.nvim_set_hl(0, "@keyword.operator", { fg = colors.accent })
	vim.api.nvim_set_hl(0, "@variable.parameter", { fg = colors.primary, italic = true })
	vim.api.nvim_set_hl(0, "@constant", { fg = colors.accent })
	vim.api.nvim_set_hl(0, "@type", { fg = colors.info })
	vim.api.nvim_set_hl(0, "@comment", { fg = colors.muted, italic = true })
	vim.api.nvim_set_hl(0, "@number", { fg = colors.number })
	vim.api.nvim_set_hl(0, "@operator", { fg = colors.primary })
	vim.api.nvim_set_hl(0, "@field", { fg = colors.info })
	vim.api.nvim_set_hl(0, "@tag", { fg = colors.tag })
	vim.api.nvim_set_hl(0, "@constructor", { fg = colors.tag })
	vim.api.nvim_set_hl(0, "@punctuation.delimiter", { fg = colors.primary })
	vim.api.nvim_set_hl(0, "@punctuation.bracket", { fg = colors.primary })
	vim.api.nvim_set_hl(0, "@punctuation.special", { fg = colors.primary })
	vim.api.nvim_set_hl(0, "@punctuation.bracket.typescript", { fg = colors.info })
	vim.api.nvim_set_hl(0, "@namespace", { fg = colors.accent })
	vim.api.nvim_set_hl(0, "@attribute", { fg = colors.tag })
	vim.api.nvim_set_hl(0, "@tag.delimiter", { fg = colors.accent })
	vim.api.nvim_set_hl(0, "@tag.attribute", { fg = colors.tag })
	vim.api.nvim_set_hl(0, "@type.builtin", { fg = colors.info })
	vim.api.nvim_set_hl(0, "@type.definition", { fg = colors.info })
	vim.api.nvim_set_hl(0, "@type.qualifier", { fg = colors.accent })
	vim.api.nvim_set_hl(0, "@variable.member", { fg = colors.primary })
	vim.api.nvim_set_hl(0, "@property", { fg = colors.info })
	vim.api.nvim_set_hl(0, "@function.method.call", { fg = colors.warning })
	vim.api.nvim_set_hl(0, "@string.template", { fg = colors.success })
	vim.api.nvim_set_hl(0, "@type.parameter", { fg = colors.info })

	-- LSP semantic tokens
	vim.api.nvim_set_hl(0, "@lsp", { fg = colors.accent })
	vim.api.nvim_set_hl(0, "@lsp.type.variable", { fg = colors.primary })
	vim.api.nvim_set_hl(0, "@lsp.type.type", { fg = colors.info })
	vim.api.nvim_set_hl(0, "@lsp.type.class", { fg = colors.tag })
	vim.api.nvim_set_hl(0, "@lsp.type.interface", { fg = colors.info })
	vim.api.nvim_set_hl(0, "@lsp.type.enum", { fg = colors.accent })
	vim.api.nvim_set_hl(0, "@lsp.typemod.variable.global", { fg = colors.accent })
	vim.api.nvim_set_hl(0, "@lsp.mod.global", { fg = colors.accent })

	-- Telescope
	vim.api.nvim_set_hl(0, "TelescopeBorder", { fg = colors.border })
	vim.api.nvim_set_hl(0, "TelescopePromptBorder", { fg = colors.border })
	vim.api.nvim_set_hl(0, "TelescopeResultsBorder", { fg = colors.border })
	vim.api.nvim_set_hl(0, "TelescopePreviewBorder", { fg = colors.border })
	vim.api.nvim_set_hl(0, "TelescopePromptTitle", { fg = colors.accent })
	vim.api.nvim_set_hl(0, "TelescopeResultsTitle", { fg = colors.muted })
	vim.api.nvim_set_hl(0, "TelescopePreviewTitle", { fg = colors.muted })
	vim.api.nvim_set_hl(0, "TelescopeMatching", { fg = colors.accent, bold = true })
	vim.api.nvim_set_hl(0, "TelescopeSelection", { bg = colors.cursor_line })

	-- Window and tab elements
	vim.api.nvim_set_hl(0, "NormalNC", { fg = colors.dimmed, bg = colors.bg_alt })
	vim.api.nvim_set_hl(0, "Directory", { fg = colors.constructor })
	vim.api.nvim_set_hl(0, "WinSeparator", { fg = colors.border, bg = colors.bg_main })
	vim.api.nvim_set_hl(0, "TabLine", { fg = colors.muted, bg = colors.bg_alt })
	vim.api.nvim_set_hl(0, "TabLineFill", { fg = colors.muted, bg = colors.bg_alt })
	vim.api.nvim_set_hl(0, "TabLineSel", { fg = colors.bg_main, bg = colors.accent })
	vim.api.nvim_set_hl(0, "WinBar", { fg = colors.muted, bg = colors.bg_alt })
	vim.api.nvim_set_hl(0, "WinBarNC", { fg = colors.muted, bg = colors.bg_main })

	-- Indent guides
	vim.api.nvim_set_hl(0, "IndentBlanklineChar", { fg = colors.border })
end

local setup_language_highlights = require("pizazz.language_loader")

return function(colors)
	apply_highlights(colors)
	setup_language_highlights(colors)
end
