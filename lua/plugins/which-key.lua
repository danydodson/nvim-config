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
        { '<leader>b', group = 'buffer' },
        { '<leader>c', group = 'code' },
        { '<leader>d', group = 'debug' },
        { '<leader>e', hidden = true },
        { '<leader>f', group = 'find' },
        { '<leader>g', group = 'git' },
        { '<leader>h', group = 'harpoon' },
        { '<leader>l', group = 'lazy' },
        { '<leader>m', group = 'markdown' },
        { '<leader>p', group = 'windows' },
        { '<leader>s', group = 'file' },
        { '<leader>t', group = 'toggle' },
        { '<leader><tab>', group = 'tabs' },
        { '<leader><leader>', hidden = true },
        {
          mode = { 'n', 'v' },
          -- -----------------------------------------------
          { '<leader>w', group = 'save/quit' },
          { '<leader>wq', '<cmd>qa<cr>', desc = 'quit all' },
          { '<leader>ww', '<cmd>wa<cr>', desc = 'save all' },
        },
      }
    end,
  },
}
