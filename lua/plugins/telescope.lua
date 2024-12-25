-- lua/plugins/telescope.lua

return {
  {
    'nvim-telescope/telescope-ui-select.nvim',
  },
  {
    'nvim-telescope/telescope-project.nvim',
    dependencies = {
      'nvim-telescope/telescope.nvim',
    },
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
      vim.keymap.set('n', '<leader>sc', find_config_files, { desc = 'search neovim configs' })
      vim.keymap.set('n', '<leader>sr', builtin.resume, { desc = 'search resume' })
      vim.keymap.set('n', '<leader>sw', builtin.grep_string, { desc = 'search current word' })
      vim.keymap.set('n', '<leader>sg', builtin.live_grep, { desc = 'search by grep' })
      vim.keymap.set('n', '<leader>sb', builtin.buffers, { desc = 'search buffers' })
      vim.keymap.set('n', '<leader>sd', builtin.diagnostics, { desc = 'search diagnostics' })
      vim.keymap.set('n', '<leader>st', builtin.builtin, { desc = 'search select telescope' })
      vim.keymap.set('n', '<leader>sk', builtin.keymaps, { desc = 'search keymaps' })
      vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = 'search help' })
      vim.keymap.set('n', '<leader>sm', builtin.man_pages, { desc = 'search man pages' })
      vim.keymap.set('n', '<leader>ss', builtin.git_status, { desc = 'search git status' })
      vim.keymap.set('n', '<C-p>', builtin.oldfiles, { desc = 'search recents' })

      require('telescope').load_extension 'ui-select'
    end,
  },
}
