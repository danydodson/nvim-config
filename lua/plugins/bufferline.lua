-- lua/plugins/bufferline.lua

return {
  {
    'akinsho/bufferline.nvim',
    event = { 'BufReadPre', 'WinEnter' },
    version = '*',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
      options = {
        always_show_bufferline = false,
        show_buffer_icons = false,
        show_close_icon = false,
        show_tab_indicators = false,
        diagnostics = 'nvim_lsp',
        offsets = {
          {
            filetype = 'undotree',
            text = 'Undotree',
            highlight = 'PanelHeading',
            padding = 0,
          },
          {
            filetype = 'neo-tree',
            text = '',
            text_align = 'left',
            padding = 0,
          },
        },
      },
      -- highlights = {
      --   fill = {
      --     bg = '#16161e',
      --   },
      --   buffer_selected = {
      --     fg = '#7aa2f7',
      --     bg = '#121219',
      --   },
      -- },
    },
    keys = {
      { '<leader>bd', '<cmd>:bp | bd #<cr>', desc = 'buffer delete' },
      { '<C-l>', '<cmd>BufferLineCycleNext<cr>', desc = 'buffer next' },
      { '<C-h>', '<cmd>BufferLineCyclePrev<cr>', desc = 'buffer previous' },
      { '<leader>b|', '<cmd>vert belowright sb<cr>', desc = 'buffer split right' },
    },
  },
}
