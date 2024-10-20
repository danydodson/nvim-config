-- lua/plugins/neo-tree.lua

return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
    "3rd/image.nvim",
  },
  config = function()
    require("neo-tree").setup({
      close_if_last_window = true,
      popup_border_style = "rounded",
      open_files_do_not_replace_types = {
        "terminal",
        "trouble",
        "qf",
      },
      default_component_configs = {
        indent = {
          padding = 2,
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
          },
        },
      },
      window = {
        width = 35,
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

    -- Hide the NeoTree statusline
    vim.keymap.set("n", "<leader>st", ":NeoTreeCloseAll<CR>", { noremap = true, silent = true })

    vim.keymap.set("n", "<leader>e", ":Neotree filesystem toggle<CR>", { noremap = true, silent = true })
    vim.keymap.set("n", "<leader>bf", ":Neotree buffers reveal float<CR>", { noremap = true, silent = true })
  end,
}
