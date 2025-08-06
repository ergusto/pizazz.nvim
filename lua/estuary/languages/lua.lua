return {
	filetypes = { "lua" },
	apply = function(colors)
		return {
			-- Lua-specific LSP semantic tokens
			["@lsp.type.variable.lua"] = { fg = colors.primary },
			["@lsp.type.parameter.lua"] = { fg = colors.primary },
			["@lsp.typemod.variable.global.lua"] = { fg = colors.accent },
			["@lsp.mod.global.lua"] = { fg = colors.accent },

			-- Lua-specific TreeSitter highlights
			["@variable.builtin.lua"] = { fg = colors.accent },
			["@keyword.function.lua"] = { fg = colors.accent },
			["@keyword.return.lua"] = { fg = colors.accent },
		}
	end
}

