-- lua/plugins/onedark.lua

return {
  {
    'navarasu/onedark.nvim',
    priority = 1000,
    lazy = false,
    enabled = true,
    config = function()
      local colors = require 'core.colors'
      local highlights = require 'core.highlights'
      require('onedark').setup {
        transparent = false,
        style = 'darker',
        ending_tildes = false,
        colors = colors,
        highlights = highlights,
        code_style = {
          comments = 'none',
          keywords = 'none',
          functions = 'none',
          strings = 'none',
          variables = 'none',
          lualine = { transparent = false },
        },
      }
      require('onedark').load()
    end,
  },
}
