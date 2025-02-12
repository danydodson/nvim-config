-- lua/plugins/onedark.lua

return {
  {
    'navarasu/onedark.nvim',
    priority = 1000,
    lazy = false,
    enabled = true,
    config = function()
      require('onedark').setup {
        -- transparent = true,
        style = 'darker',
        code_style = {
          comments = 'none',
          keywords = 'none',
          functions = 'none',
          strings = 'none',
          variables = 'none',
          -- lualine = { transparent = false },
        },
      }
      require('onedark').load()
    end,
  },
}
