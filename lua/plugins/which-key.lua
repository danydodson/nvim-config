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
        { '<leader>s',        group = 'search' },
        { '<leader>f',        group = 'file' },
        { '<leader>b',        group = 'buffer' },
        { '<leader><tab>',    group = 'tabs' },
        { '<leader>p',        group = 'windows' },
        { '<leader>h',        group = 'harpoon' },
        { '<leader>c',        group = 'code' },
        { '<leader>g',        group = 'git' },
        { '<leader>d',        group = 'debug' },
        { '<leader>t',        group = 'toggle' },
        { '<leader>/',        group = 'comment' },
        { '<leader><leader>', hidden = true },
        { '<leader>e',        hidden = true },
        {
          mode = { 'n', 'v' },
          -- -----------------------------------------------
          { '<leader>w',  group = 'save' },
          { '<leader>wq', '<cmd>qa<cr>', desc = 'quit all' },
          { '<leader>ww', '<cmd>w<cr>',  desc = 'save all' },
        },
      }
    end,
  },
}
