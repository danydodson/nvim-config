-- lua/plugins/onedark.lua

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
        },
        lualine = {
          transparent = false,
        },
        diagnostics = {
          darker = false,
          undercurl = false,
          background = true,
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
