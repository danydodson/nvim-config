-- lua/plugins/lsp-config.lua

return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"bashls",
					"cssls",
					"gopls",
					"html",
					"lua_ls",
					"marksman",
					"rust_analyzer",
					"staticcheck",
					"tailwindcss",
					"ts_ls",
					"yamlls",
				},
			})
		end,
		opts = {
			auto_install = true,
		},
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")
			lspconfig.ts_ls.setup({
				capabilities = capabilities,
			})

			lspconfig.html.setup({
				capabilities = capabilities,
			})

			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})

			lspconfig.tailwindcss.setup({
				capabilities = capabilities,
			})

			local capabilities_css = vim.lsp.protocol.make_client_capabilities()
			capabilities_css.textDocument.completion.completionItem.snippetSupport = true
			lspconfig.cssls.setup({
				capabilities = capabilities_css,
			})

			lspconfig.marksman.setup({
				capabilities = capabilities,
			})

			lspconfig.yamlls.setup({
				capabilities = capabilities,
			})

			lspconfig.bashls.setup({
				capabilities = capabilities,
				cmd = { "bash-language-server", "start" },
				filetypes = { "sh", "bash" },
			})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>cd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>cr", vim.lsp.buf.references, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
