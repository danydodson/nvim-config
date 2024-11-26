-- lua/plugins/onedark.lua

return {
	{
		"navarasu/onedark.nvim",
		priority = 1000,
		lazy = false,
		enabled = true,
		config = function()
			local col = require("core.colors")
			require("onedark").setup({
				transparent = false,
				-- style = "darker",
				ending_tildes = false,
				code_style = {
					comments = "italic",
					keywords = "bold",
					functions = "bold",
					strings = "none",
					variables = "none",
					lualine = {
						transparent = false,
					},
				},
				colors = col.onedark,
				highlights = col.onedark_hl
			})
			require("onedark").load()
		end,
	},
}
