-- lua/plugins/onedark.lua

return {
  {
    'navarasu/onedark.nvim',
    priority = 1000,
    lazy = false,
    enabled = true,
    config = function()
      require('onedark').setup {
        style = 'darker',
        transparent = false,
        ending_tildes = false,
        code_style = {
          comments = 'none',
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
}
