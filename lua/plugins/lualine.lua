-- lua/plugins/lualine.lua

return {
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			local colors = require('onedark.colors')

			local onedark_theme = {
				normal = {
					a = { fg = colors.green, bg = colors.bg_d, },
					b = { fg = colors.light, bg = colors.bg_d },
					c = { fg = colors.light, bg = colors.bg_d, gui = "bold" },
					z = { fg = colors.light, bg = colors.bg_d, gui = "bold" },
				},
				insert = {
					c = { fg = colors.blue, bg = colors.bg_d },
					z = { fg = colors.blue, bg = colors.bg_d },
				},
				visual = {
					c = { fg = colors.yellow, bg = colors.bg_d },
					z = { fg = colors.yellow, bg = colors.bg_d },
				},
				replace = {
					c = { fg = colors.red, bg = colors.bg_d },
					z = { fg = colors.red, bg = colors.bg_d },
				},
				inactive = {
					a = { fg = colors.green, bg = colors.bg_d },
					b = { fg = colors.light, bg = colors.bg_d },
					c = { fg = colors.light, bg = colors.bg_d, gui = "bold" },
					z = { fg = colors.light, bg = colors.bg_d, gui = "bold" },
				},
			}
			require("lualine").setup({
				options = {
					icons_enabled = true,
					theme = onedark_theme,
					always_show_tabline = false,
					component_separators = {
						left = "",
						right = "",
					},
					section_separators = {
						left = "",
						right = "",
					},
					disabled_filetypes = {
						winbar = { "neo-tree" },
						statusline = { "neo-tree" },
						tabline = { "neo-tree" },
					},
				},
				sections = {
					lualine_a = {},
					lualine_b = {},
					lualine_c = { "filename" },
					lualine_x = {},
					lualine_y = {},
					lualine_z = { "location" },
				},
				inactive_sections = {
					lualine_a = {},
					lualine_b = {},
					lualine_c = {},
					lualine_x = {},
					lualine_y = {},
					lualine_z = {},
				},
			})
		end,
	}
}
