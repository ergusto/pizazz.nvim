local function setup_language_highlights(colors)
	-- Clear any existing estuary language autocommands
	vim.api.nvim_create_augroup("EstuaryLanguageHighlights", { clear = true })

	-- Get the languages directory path
	local script_path = debug.getinfo(1, "S").source:sub(2)
	local languages_dir = vim.fn.fnamemodify(script_path, ":h") .. "/languages"

	-- Find all .lua files in languages directory
	local lang_files = vim.fs.find(function(name)
		return name:match("%.lua$")
	end, {
		path = languages_dir,
		type = "file",
	})

	-- Process each language file and apply ALL highlights immediately
	for _, filepath in ipairs(lang_files) do
		local filename = vim.fn.fnamemodify(filepath, ":t:r") -- Get filename without extension

		local ok, lang_config = pcall(require, "estuary.languages." .. filename)

		if ok then
			-- Validate structure
			if type(lang_config) == "table" and lang_config.filetypes and type(lang_config.apply) == "function" then
				-- Apply ALL language highlights immediately when colorscheme loads
				local highlight_ok, highlights = pcall(lang_config.apply, colors)
				if highlight_ok and type(highlights) == "table" then
					for group, opts in pairs(highlights) do
						vim.api.nvim_set_hl(0, group, opts)
					end
				end

				-- Also set up autocommands for future file loads
				local captured_colors = colors
				vim.api.nvim_create_autocmd("FileType", {
					group = "EstuaryLanguageHighlights",
					pattern = lang_config.filetypes,
					callback = function()
						local highlight_ok, highlights = pcall(lang_config.apply, captured_colors)
						if highlight_ok and type(highlights) == "table" then
							for group, opts in pairs(highlights) do
								vim.api.nvim_set_hl(0, group, opts)
							end
						end
					end,
				})
			end
		end
	end
end

return setup_language_highlights

