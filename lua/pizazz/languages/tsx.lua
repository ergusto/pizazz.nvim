return {
	filetypes = { "typescriptreact", "typescript.tsx" },
	apply = function(colors)
		return {
			-- JSX/TSX specific highlights
			["@tag.tsx"] = { fg = colors.tag },
			["@tag.builtin.tsx"] = { fg = colors.accent },
			["@tag.attribute.tsx"] = { fg = colors.tag }, -- TSX specific attributes
			["@attribute.tsx"] = { fg = colors.tag }, -- TSX attributes
			["@string.special.tsx"] = { fg = colors.success },
			["@type.tsx"] = { fg = colors.tag }, -- React component names
			["@variable.tsx"] = { fg = colors.tag }, -- Alternative component highlight

			-- JSX expression and fragment highlights
			["@punctuation.bracket.tsx"] = { fg = colors.primary }, -- JSX { } expressions - white
			["@tag.delimiter.tsx"] = { fg = colors.accent }, -- JSX angle brackets
			["@constructor.tsx"] = { fg = colors.tag }, -- Component constructors

			-- React/Hooks specific
			["@function.call.tsx"] = { fg = colors.function_name }, -- React hooks
			["@property.tsx"] = { fg = colors.tag }, -- JSX props - same as main branch

			-- Event handlers and callbacks
			["@variable.parameter.tsx"] = { fg = colors.primary },
		}
	end
}

