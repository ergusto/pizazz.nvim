return {
	filetypes = { "typescriptreact", "typescript.tsx" },
	apply = function(colors)
		return {
			-- JSX/TSX specific highlights (only truly TSX-specific overrides)
			-- ["@tag.tsx"] = { fg = colors.accent },
			-- ["@tag.builtin.tsx"] = { fg = colors.accent },
			-- ["@tag.attribute.tsx"] = { fg = colors.tag }, -- TSX specific attributes
			-- ["@attribute.tsx"] = { fg = colors.tag }, -- TSX attributes
			--
			-- -- JSX expression and fragment highlights
			-- ["@tag.delimiter.tsx"] = { fg = colors.accent }, -- JSX angle brackets
			-- ["@constructor.tsx"] = { fg = colors.tag }, -- Component constructors
			-- ["@property.tsx"] = { fg = colors.tag }, -- JSX props
		}
	end,
}
