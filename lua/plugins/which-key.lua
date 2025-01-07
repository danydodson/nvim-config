-- lua/plugins/which-key.lua

return {
  {
    'folke/which-key.nvim',
    event = 'VeryLazy',
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 500
    end,
    config = function()
      local wk = require 'which-key'
      wk.setup {
        show_help = false,
        show_keys = false,
        icons = { mappings = false },
      }
      wk.add { --       󱦘
        { '<leader>/', hidden = true },
        { '<leader>a', group = 'dashboard' },
        { '<leader>b', group = 'buffer' },
        { '<leader>c', group = 'code' },
        { '<leader>d', group = 'debug' },
        { '<leader>e', hidden = true },
        { '<leader>f', group = 'find' },
        { '<leader>g', group = 'git' },
        { '<leader>h', group = 'harpoon' },
        { '<leader>l', group = 'lazy' },
        { '<leader>m', group = 'markdown' },
        { '<leader>p', group = 'projects' },
        { '<leader>s', group = 'sessions' },
        { '<leader>t', group = 'toggle' },
        { '<leader>w', group = 'windows' },
        { '<leader>z', group = 'file' },
        { '<leader><tab>', group = 'tabs' },
        { '<leader><leader>', hidden = true },
        {
          mode = { 'n', 'v' },
          -- -----------------------------------------------
          { '<leader>q', group = 'save/quit' },
          { '<leader>qq', '<cmd>qa<cr>', desc = 'quit all' },
          { '<leader>qw', '<cmd>wa<cr>', desc = 'save all' },
        },
      }
    end,
  },
}
