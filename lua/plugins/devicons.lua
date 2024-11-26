-- lua/plugins/devicons.lua

return {
  {
    require("nvim-web-devicons").setup({
      override = {
        lua = {
          icon = "",
          color = "#61afef",
          cterm_color = "74",
          name = "Lua",
        },
      },
      default = true,
    }),
  },
  {
    "rachartier/tiny-devicons-auto-colors.nvim",
    event = "VeryLazy",
    config = function()
      require("tiny-devicons-auto-colors").setup({})
    end,
  }
}
