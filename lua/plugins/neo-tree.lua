-- lua/plugins/neo-tree.lua

return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			-- "nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
			"3rd/image.nvim",
		},
		config = function()
			require("neo-tree").setup({
				close_if_last_window = true,
				popup_border_style = "rounded",
				hide_root_node = true,
				enable_git_status = true,
				enable_diagnostics = true,
				open_files_do_not_replace_types = {
					"terminal",
					"trouble",
					"qf",
				},
				default_component_configs = {
					container = {
						enable_character_fade = true,
					},
					indent = {
						indent_size = 2,
						padding = 2,
						with_markers = true,
						indent_marker = "│",
						last_indent_marker = "└",
						highlight = "NeoTreeIndentMarker",
						with_expanders = nil,
						expander_collapsed = "",
						expander_expanded = "",
						expander_highlight = "NeoTreeExpander",
					},
					icon = {
						folder_closed = "",
						folder_open = "",
						folder_empty = "",
						default = "",
						highlight = "NeoTreeFileIcon",
					},
					modified = {
						symbol = "[+]",
						highlight = "NeoTreeModified",
					},
					name = {
						trailing_slash = false,
						use_git_status_colors = false,
						highlight = "NeoTreeFileName",
					},
					git_status = {
						symbols = {
							added = "", -- or "✚",
							modified = "", -- or "",
							deleted = "✖",
							renamed = "󰁕",
							untracked = "",
							ignored = "",
							unstaged = "󰄱",
							staged = "",
							conflict = "",
						},
					},
				},
				filesystem = {
					use_libuv_file_watcher = true,
					follow_current_file = {
						enabled = true,
						leave_dirs_open = true,
					},
					filtered_items = {
						visible = true,
						hide_dotfiles = false,
						hide_gitignored = false,
						never_show = {
							".git",
							".DS_Store",
							"Icon'$'\r",
						},
					},
				},
				window = {
					width = 32,
					mappings = {
						["."] = "set_root",
						["<esc>"] = "cancel",
						["l"] = { "toggle_node", nowait = true },
						["P"] = { "toggle_preview", config = { use_float = false, use_image_nvim = true } },
						["O"] = {
							function(state)
								require("lazy.util").open(state.tree:get_node().path, { system = true })
							end,
						},
					},
				},
				buffers = {
					follow_current_file = {
						enabled = true,
					},
				},
			})

			local define = vim.fn.sign_define
			define("DiagnosticSignError", { text = " ", texthl = "DiagnosticSignError" })
			define("DiagnosticSignWarn", { text = " ", texthl = "DiagnosticSignWarn" })
			define("DiagnosticSignInfo", { text = " ", texthl = "DiagnosticSignInfo" })
			define("DiagnosticSignHint", { text = "󰌵", texthl = "DiagnosticSignHint" })

			local set = vim.keymap.set
			set("n", "<leader>e", ":Neotree filesystem toggle<CR>", { noremap = true, silent = true, desc = 'Neotree Files' })
		end,
	}
}
