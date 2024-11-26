-- lua/plugins/telescope.lua

return {
  {
    'nvim-telescope/telescope-ui-select.nvim',
  },
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local actions = require 'telescope.actions'

      require('telescope').setup {
        pickers = {
          find_files = {
            hidden = true,
          },
        },
        extensions = {
          ['ui-select'] = {
            require('telescope.themes').get_dropdown {},
          },
          mappings = {
            i = { ['<esc>'] = actions.close },
          },
        },
      }

      local builtin = require 'telescope.builtin'

      local find_files = function()
        builtin.find_files {
          find_command = { 'rg', '--files', '--iglob', '!.git', '--hidden' },
        }
      end

      local find_config_files = function()
        builtin.find_files {
          find_command = { 'rg', '--files', '--iglob', '!.git', '--hidden', '/.config/nvim' },
        }
      end

      vim.keymap.set('n', '<leader><leader>', find_files)
      vim.keymap.set('n', '<leader>sc', find_config_files, { desc = 'Search Neovim Configs' })
      vim.keymap.set('n', '<leader>sr', builtin.resume, { desc = 'Search Resume' })
      vim.keymap.set('n', '<leader>sw', builtin.grep_string, { desc = 'Search current Word' })
      vim.keymap.set('n', '<leader>sg', builtin.live_grep, { desc = 'Search by Grep' })
      vim.keymap.set('n', '<leader>sb', builtin.buffers, { desc = 'Search Buffers' })
      vim.keymap.set('n', '<leader>sd', builtin.diagnostics, { desc = 'Search Diagnostics' })
      vim.keymap.set('n', '<leader>st', builtin.builtin, { desc = 'Search Select Telescope' })
      vim.keymap.set('n', '<leader>sk', builtin.keymaps, { desc = 'Search Keymaps' })
      vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = 'Search Help' })
      vim.keymap.set('n', '<leader>sm', builtin.man_pages, { desc = 'Search Man Pages' })
      vim.keymap.set('n', '<leader>ss', builtin.git_status, { desc = 'Search Git Status' })
      vim.keymap.set('n', '<C-p>', builtin.oldfiles, { desc = 'Search Recents' })

      require('telescope').load_extension 'ui-select'
    end,
  },
}
