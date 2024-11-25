-- lua/plugins/onedark.lua

return {
	{
		"navarasu/onedark.nvim",
		priority = 1000,
		lazy = false,
		enabled = true,
		opts = {
			transparent = false,
			style = "darker",
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
			colors = {
				black = "#0e1013", -- #2d313b
				bg0 = "#23272e", -- "#1f2329",
				bg1 = "#282c34",
				bg2 = "#30363f",
				bg3 = "#323641",
				bg_d = "#181b20",
				bg_blue = "#61afef",
				bg_yellow = "#e8c88c",
				fg = "#a0a8b7", -- #aaaeb8
				purple = "#bf68d9",
				violet = "#a9a1e1",
				magenta = "#bb7bd7",
				green = "#8ebd6b",  -- #a0c180
				orange = "#cc9057", -- #d19a66
				blue = "#4fa6ed",   -- #73ade9
				yellow = "#e2b86b", -- #dfc184
				cyan = "#48b0bd",   -- #6fb3bf
				red = "#d17277",    -- "#e55561"
				grey = "#535965",   -- #424b5c
				light_grey = "#7a818e", -- #aaaeb8
			},
			highlights = {
				TelescopeMatching = { fg = "$orange" },
				TelescopeSelection = { fg = "$fg", bg = "$bg0" },
				TelescopePromptBorder = { bg = "$bg0", fg = "$grey" },
				TelescopeResultsBorder = { bg = "$bg0", fg = "$grey" },
				TelescopePreviewBorder = { bg = "$bg0", fg = "$grey" },
				TelescopePromptTitle = { bg = "$blue", fg = "$bg0" },
				TelescopeResultsTitle = { bg = "$blue", fg = "$bg0" },
				TelescopePreviewTitle = { bg = "$blue", fg = "$bg0" },
				-- TelescopePromptPrefix = { bg = "$bg1" },
				-- TelescopePromptNormal = { bg = "$bg1" },
				-- TelescopeResultsNormal = { bg = "$bg0" },
				-- TelescopePreviewNormal = { bg = "$bg0" },

				-- PMenu = { fg = "$fg", bg = "$black", blend = vim.o.pumblend }, -- make cmp menu transparent
				PMenu = { fg = "$fg", bg = "$black" }, -- make cmp menu transparent
				-- PmenuSel = { fg = "black", bg = "$red" },
				-- PmenuSbar = { bg = "$black" },
				PmenuThumb = { bg = "$black" },
			},
		},
		config = function(_, opts)
			require("onedark").setup(opts) -- calling setup is optional
			require("onedark").load()
		end,
	},
}
