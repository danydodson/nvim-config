-- lua/plugins/toggleterm.lua
-- https://github.com/akinsho/toggleterm.nvim

-- return {}

return {
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		opts = {
			size = 20,
			open_mapping = [[<c-\>]],
			direction = "float",
			float_opts = {
				border = "curved",
				winblend = 3,
			},
		},
	},
}
