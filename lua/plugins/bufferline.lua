-- lua/plugins/bufferline.lua

return {
  {
    'akinsho/bufferline.nvim',
    event = { 'BufReadPre', 'WinEnter' },
    version = '*',
    dependencies = 'nvim-tree/nvim-web-devicons',
    opts = {
      options = {
        always_show_bufferline = true,
        show_buffer_icons = false,
        show_close_icon = false,
        diagnostics = 'nvim_lsp',
        show_tab_indicators = false,
        indicator = {
          style = 'icon',
          icon = '',
          buffer_close_icon = '',
          modified_icon = '',
          close_icon = '',
          left_trunc_marker = '<-',
          right_trunc_marker = '->',
        },
        offsets = {
          {
            filetype = 'undotree',
            text = 'Undotree',
            highlight = 'PanelHeading',
            padding = 1,
          },
          {
            filetype = 'neo-tree',
            text = '',
            text_align = 'left',
            padding = 1,
          },
          {
            filetype = 'DiffviewFiles',
            text = 'Diff View',
            highlight = 'PanelHeading',
            padding = 1,
          },
          {
            filetype = 'lazy',
            text = 'Lazy',
            highlight = 'PanelHeading',
            padding = 1,
          },
        },
      },
    },
    keys = {
      {
        '<C-h>',
        function()
          local utils = require 'core.utils'
          if utils.check.vimcmd 'BufferLineCyclePrev' then
            vim.cmd 'BufferLineCyclePrev'
          else
            vim.cmd 'bprev'
          end
        end,
        desc = 'Buffer Previous',
      },
      {
        '<C-l>',
        function()
          local utils = require 'core.utils'
          if utils.check.vimcmd 'BufferLineCycleNext' then
            vim.cmd 'BufferLineCycleNext'
          else
            vim.cmd 'bnext'
          end
        end,
        desc = 'Buffer Next',
      },
      { '<leader>bd', '<cmd>:bp | bd #<cr>',          desc = 'buffer delete' },
      { '<leader>b[', '<cmd>BufferLineCyclePrev<cr>', desc = 'buffer previous' },
      { '<leader>b]', '<cmd>BufferLineCycleNext<cr>', desc = 'buffer next' },
      { '<leader>bk', '<cmd>BufferLinePick<cr>',      desc = 'buffer pick' },
      { '<leader>bp', '<cmd>BufferLineTogglePin<cr>', desc = 'buffer pin' },
    },
  },
}
