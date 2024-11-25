-- lua/plugins/dressing.lua

return {
	{
		"stevearc/dressing.nvim",
		lazy = true,
		opts = {
			input = { default_prompt = "➤ " },
			select = { backend = { "telescope", "builtin" } },
		},
	},
}
