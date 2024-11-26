-- lua/core/colors.lua

return {
	onedark = {
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
		green = "#8ebd6b", -- #a0c180
		orange = "#cc9057", -- #d19a66
		blue = "#4fa6ed", -- #73ade9
		yellow = "#e2b86b", -- #dfc184
		cyan = "#48b0bd", -- #6fb3bf
		red = "#d17277", -- "#e55561"
		grey = "#535965", -- #424b5c
		light_grey = "#7a818e", -- #aaaeb8
	},
	onedark_hl = {
		TelescopeMatching = { fg = "$orange" },
		TelescopeSelection = { bg = "$bg0", fg = "$fg" },
		TelescopePromptBorder = { bg = "$bg0", fg = "$grey" },
		TelescopeResultsBorder = { bg = "$bg0", fg = "$grey" },
		TelescopePreviewBorder = { bg = "$bg0", fg = "$grey" },
		TelescopePromptTitle = { bg = "$blue", fg = "$bg0" },
		TelescopeResultsTitle = { bg = "$blue", fg = "$bg0" },
		TelescopePreviewTitle = { bg = "$blue", fg = "$bg0" },
		TelescopePromptPrefix = { bg = "$bg0", fg = "$fg" },
		TelescopePromptNormal = { bg = "$bg0", fg = "$fg" },
		TelescopeResultsNormal = { bg = "$bg0" },
		TelescopePreviewNormal = { bg = "$bg0" },

		-- PMenu = { fg = "$fg", bg = "$bg0" }, -- make cmp menu transparent
		-- PMenu = { fg = "$fg", bg = "$bg0", blend = vim.o.pumblend }, -- add `blend = vim.o.pumblend` to enable transparency
		-- PmenuSel = { fg = "NONE", bg = "$bg0" },
		PmenuSbar = { bg = "$bg0" },
		PmenuThumb = { bg = "$red" },

		-- NeoTreeGitAdded = { fg = "$green" },
		-- NeoTreeGitConflict = { fg = "$purple" },
		-- NeoTreeGitDeleted = { fg = "$red" },
		-- NeoTreeGitIgnored = { fg = "$bg_d" },
		-- NeoTreeGitModified = { fg = "$yellow" },
		-- NeoTreeGitUntracked = { fg = "$blue" },
		--
		-- NeoTreeGitUnstaged = { fg = "$red" },
		-- NeoTreeGitStaged = { fg = "$green" },
		-- NeoTreeModified = { fg = "$yellow" },
		--
		-- NeoTreeTabActive = { fg = "$fg", bg = "$red" },
		-- NeoTreeTabInactive = { fg = "$bg_d", bg = "$red" },
		-- NeoTreeIndentMarker = { fg = "$yellow" },
		-- NeoTreeDirectoryIcon = { fg = "$fg" },
		-- NeoTreeDirectoryName = { fg = "$blue" },
		-- NeoTreeSymbolicLinkTarget = { fg = "$purple" },
		-- NeoTreeRootName = { fg = "$blue" },
		-- NeoTreeFileNameOpened = { fg = "$purple" },
		--
		-- GitHeader = { bg = "$black" },
		-- GitFooter = { bg = "$black" },
	},
	dark = {
		black = "#181a1f",
		bg0 = "#282c34",
		bg1 = "#31353f",
		bg2 = "#393f4a",
		bg3 = "#3b3f4c",
		bg_d = "#21252b",
		bg_blue = "#73b8f1",
		bg_yellow = "#ebd09c",
		fg = "#abb2bf",
		purple = "#c678dd",
		green = "#98c379",
		orange = "#d19a66",
		blue = "#61afef",
		yellow = "#e5c07b",
		cyan = "#56b6c2",
		red = "#e86671",
		grey = "#5c6370",
		light_grey = "#848b98",
		dark_cyan = "#2b6f77",
		dark_red = "#993939",
		dark_yellow = "#93691d",
		dark_purple = "#8a3fa0",
		diff_add = "#31392b",
		diff_delete = "#382b2c",
		diff_change = "#1c3448",
		diff_text = "#2c5372",
	},
	darker = {
		black = "#0e1013",
		bg0 = "#1f2329",
		bg1 = "#282c34",
		bg2 = "#30363f",
		bg3 = "#323641",
		bg_d = "#181b20",
		bg_blue = "#61afef",
		bg_yellow = "#e8c88c",
		fg = "#a0a8b7",
		purple = "#bf68d9",
		green = "#8ebd6b",
		orange = "#cc9057",
		blue = "#4fa6ed",
		yellow = "#e2b86b",
		cyan = "#48b0bd",
		red = "#e55561",
		grey = "#535965",
		light_grey = "#7a818e",
		dark_cyan = "#266269",
		dark_red = "#8b3434",
		dark_yellow = "#835d1a",
		dark_purple = "#7e3992",
		diff_add = "#272e23",
		diff_delete = "#2d2223",
		diff_change = "#172a3a",
		diff_text = "#274964",
	},
}
