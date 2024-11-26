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
      local c = require("core.colors")
      wk.setup {
        show_help = false,
        show_keys = false,
      }
      wk.add { --       󱦘
        { '<leader>s', group = 'Search', icon = { icon = "", color = "blue" } },
        { '<leader>f', group = 'File', icon = { icon = "", color = "blue" } },
        { '<leader>b', group = 'Buffer', icon = { icon = "", color = "blue" } },
        { '<leader><tab>', group = 'Tabs', icon = { icon = "", color = "blue" } },
        { '<leader>h', group = 'Harpoon', icon = { icon = "", color = "blue" } },
        { '<leader>c', group = 'Code', icon = { icon = "", color = "blue" } },
        { '<leader>g', group = 'Git', icon = { icon = "", color = "blue" } },
        { '<leader>d', group = 'Debug', icon = { icon = "", color = "blue" } },
        { '<leader>t', group = 'Toggle', icon = { icon = "", color = "blue" } },
        { '<leader><leader>', hidden = true },
        { '<leader>e', hidden = true },
        {
          mode = { 'n', 'v' },
          -- -----------------------------------------------
          { '<leader>w', group = 'Write', icon = { icon = "", color = "blue" } },
          { '<leader>wq', '<cmd>qa<cr>', desc = 'File Quit all' },
          { '<leader>ww', '<cmd>w<cr>', desc = 'File Save All' },
        },
      }
    end,
  },
}
