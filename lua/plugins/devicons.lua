-- lua/plugins/devicons.lua

return {
  {
    'nvim-tree/nvim-web-devicons',
    opts = {
      override = {
        default_icon = { icon = '󰈙', name = 'default' },
        lua = { icon = '', name = 'Lua' },
        deb = { icon = '', name = 'Deb' },
        lock = { icon = '󰌾', name = 'Lock' },
        mp3 = { icon = '󰎆', name = 'Mp3' },
        mp4 = { icon = '', name = 'Mp4' },
        out = { icon = '', name = 'Out' },
        ['robots.txt'] = { icon = '󰚩', name = 'Robots.txt' },
        rpm = { icon = '', name = 'Rpm' },
        ttf = { icon = '', name = 'TrueTypeFont' },
        woff = { icon = '', name = 'WebOpenFontFormat' },
        woff2 = { icon = '', name = 'WebOpenFontFormat2' },
        xz = { icon = '', name = 'Xz' },
        zip = { icon = '', name = 'Zip' },
      },
    },
    config = function(_, opts)
      require('nvim-web-devicons').setup(opts)
      pcall(vim.api.nvim_del_user_command, 'NvimWebDeviconsHiTest')
    end,
  },
  {
    'rachartier/tiny-devicons-auto-colors.nvim',
    event = 'VeryLazy',
    config = function()
      require('tiny-devicons-auto-colors').setup {}
    end,
  },
}
