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
        icons = { mappings = false }
      }
      wk.add { --       󱦘
        { '<leader>s',        group = 'Search' },
        { '<leader>f',        group = 'File', },
        { '<leader>b',        group = 'Buffer' },
        { '<leader><tab>',    group = 'Tabs' },
        { '<leader>h',        group = 'Harpoon' },
        { '<leader>c',        group = 'Code' },
        { '<leader>g',        group = 'Git' },
        { '<leader>d',        group = 'Debug' },
        { '<leader>t',        group = 'Toggle' },
        { '<leader><leader>', hidden = true },
        { '<leader>e',        hidden = true },
        {
          mode = { 'n', 'v' },
          -- -----------------------------------------------
          { '<leader>w',  group = 'Write' },
          { '<leader>wq', '<cmd>qa<cr>',  desc = 'File Quit all' },
          { '<leader>ww', '<cmd>w<cr>',   desc = 'File Save All' },
        },
      }
    end,
  },
}
