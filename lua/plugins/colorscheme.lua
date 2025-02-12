-- lua/plugins/colorscheme.lua

return {
  {
    'navarasu/onedark.nvim',
    priority = 1000,
    lazy = false,
    enabled = true,
    config = function()
      require('onedark').setup {
        transparent = false,
        style = 'darker',
        code_style = {
          comments = 'none',
          keywords = 'none',
          functions = 'none',
          strings = 'none',
          variables = 'none',
          lualine = { transparent = true },
        },
      }
      require('onedark').load()
    end,
  },
  {
    'olimorris/onedarkpro.nvim',
    priority = 1000,
    lazy = false,
    enabled = false,
    opts = {},
    config = function()
      require('onedarkpro').setup {
        options = {
          transparency = false,
          lualine_transparency = true,
        },
      }
      vim.cmd 'colorscheme onedark_dark'
    end,
  },
}
