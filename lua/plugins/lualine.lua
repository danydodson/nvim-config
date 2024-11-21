-- lua/plugins/lualine.lua

return {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local colors = {
      light = "#abb2bf",
      dark = "#21262e",
      green = "#98c379",
      yellow = "#e5c07b",
      blue = "#61afef",
      red = "#e06c75",
    }

    local onedark_theme = {
      normal = {
        a = { fg = colors.green, bg = colors.dark, gui = "" },
        b = { fg = colors.light, bg = colors.dark },
        c = { fg = colors.light, bg = colors.dark },
        z = { fg = colors.light, bg = colors.dark, gui = "" },
      },
      insert = {
        c = { fg = colors.blue, bg = colors.dark },
        z = { fg = colors.blue, bg = colors.dark },
      },
      visual = {
        c = { fg = colors.yellow, bg = colors.dark },
        z = { fg = colors.yellow, bg = colors.dark },
      },
      replace = {
        c = { fg = colors.red, bg = colors.dark },
        z = { fg = colors.red, bg = colors.dark },
      },
      inactive = {
        a = { fg = colors.green, bg = colors.dark, gui = "" },
        b = { fg = colors.light, bg = colors.dark },
        c = { fg = colors.light, bg = colors.dark },
        z = { fg = colors.light, bg = colors.dark, gui = "" },
      },
    }

    require("lualine").setup({
      options = {
        icons_enabled = true,
        theme = onedark_theme,
        always_show_tabline = false,
        component_separators = {
          left = "",
          right = "",
        },
        section_separators = {
          left = "",
          right = "",
        },
        disabled_filetypes = {
          winbar = { "neo-tree" },
          -- statusline = { "neo-tree" },
          tabline = { "neo-tree" },
        },
      },
      sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { "filename" },
        lualine_x = {},
        lualine_y = {},
        lualine_z = { "location" },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
      },
    })
  end,
}
