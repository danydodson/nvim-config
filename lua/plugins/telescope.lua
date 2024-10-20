-- lua/plugins/telescope.lua

return {
  {
    "nvim-telescope/telescope-ui-select.nvim",
  },
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local actions = require("telescope.actions")

      require("telescope").setup({
        pickers = {
          find_files = {
            hidden = true,
          },
        },
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
          },
          mappings = {
            i = { ["<esc>"] = actions.close, },
          },
        },
      })

      local builtin = require("telescope.builtin")

      local find_files = function()
        builtin.find_files {
          find_command = { 'rg', '--files', '--iglob', '!.git', '--hidden' },
        }
      end

      local find_config_files = function()
        local config_dir = vim.env.HOME .. '/.config/nvim'
        builtin.find_files {
          find_command = { 'rg', '--files', '--iglob', '!.git', '--hidden', config_dir },
        }
      end

      vim.keymap.set("n", "<leader><leader>", find_files, {})
      vim.keymap.set("n", "<leader>fc", find_config_files, {})
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
      vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
      vim.keymap.set("n", "<leader>fd", builtin.git_status, {})
      vim.keymap.set("n", "<C-p>", builtin.oldfiles, {})

      require("telescope").load_extension("ui-select")
    end,
  },
}
