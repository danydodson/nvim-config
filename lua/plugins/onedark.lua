-- lua/plugins/onedark.lua

return {
	"navarasu/onedark.nvim",
	priority = 1000,
	lazy = false,
	enabled = true,
	opts = {
		-- custom options here
		transparent = true,
		style = "darker",
		code_style = {
			comments = "italic",
			keywords = "bold",
			functions = "bold",
			strings = "none",
			variables = "none",
		},
		lualine = {
			transparent = true, -- lualine center bar transparency
		},
		colors = {
			bg = "#282c34",
			fg = "#abb2bf",
			grey = "#424b5c",
			dark = "#21262e",
			green = "#98c379",
			yellow = "#e5c07b",
			blue = "#61afef",
			red = "#e06c75",
			cyan = "#56b6c2",
			orange = "#d19a66",
			violet = "#a9a1e1",
			magenta = "#c678dd",
		},
		highlights = {
			TelescopeMatching = { fg = "$orange" },
			TelescopeSelection = { fg = "$fg", bg = "$bg1", bold = true },
			-- TelescopePromptPrefix = { bg = "$bg1" },
			-- TelescopePromptNormal = { bg = "$bg1" },
			-- TelescopeResultsNormal = { bg = "$bg0" },
			-- TelescopePreviewNormal = { bg = "$bg0" },
			TelescopePromptBorder = { bg = "$bg", fg = "$grey", bold = true },
			TelescopeResultsBorder = { bg = "$bg", fg = "$grey", bold = true },
			TelescopePreviewBorder = { bg = "$bg", fg = "$grey", bold = true },
			TelescopePromptTitle = { bg = "$blue", fg = "$bg", bold = true },
			TelescopeResultsTitle = { bg = "$blue", fg = "$bg", bold = true },
			TelescopePreviewTitle = { bg = "$blue", fg = "$bg", bold = true },

			-- PMenu = { bg = "$dark", blend = vim.o.pumblend }, -- make cmp menu transparent
			PMenu = { fg = "$fg", bg = "$bg", blend = vim.o.pumblend }, -- add `blend = vim.o.pumblend` to enable transparency
			-- PmenuSel = { fg = "NONE", bg = "$bg" },
			PmenuSbar = { bg = "$bg" },
			PmenuThumb = { bg = "$bg" },
		},
	},
	config = function(_, opts)
		require("onedark").setup(opts) -- calling setup is optional
		require("onedark").load()
	end,
}
