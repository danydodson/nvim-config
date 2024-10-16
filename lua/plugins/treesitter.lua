-- lua/plugins/treesitter.lua
-- https://github.com/nvim-treesitter/nvim-treesitter

-- return {}

return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local config = require("nvim-treesitter.configs")
			config.setup({
				auto_install = true,
				highlight = { enable = true },
				indent = { enable = true },
				ensure_installed = {
					"bash",
					"c",
					"css",
					"dockerfile",
					"go",
					"gomod",
					"gosum",
					"html",
					"http",
					"javascript",
					"json",
					"jsonc",
					"lua",
					"luadoc",
					"markdown",
					"nginx",
					"ocaml",
					"query",
					"rust",
					"sql",
					"toml",
					"tsx",
					"typescript",
					"vim",
					"vimdoc",
					"xml",
					"yaml",
				},
			})
		end,
	},
}
