-- lua/plugins/lualine.lua

return {
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			-- local custom_onedark = require'lualine.themes.onedark'

			require("lualine").setup({
				options = {
					globalstatus = false,
					theme = "auto",
					refresh = {
						statusline = 200,
					},
					component_separators = {
						left = "",
						right = "",
					},
					sections = {},
					inactive_sections = {},
				},
			})
		end,
	},
}
