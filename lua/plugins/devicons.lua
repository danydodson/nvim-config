-- lua/plugins/devicons.lua

return {
  {
    "nvim-tree/nvim-web-devicons",
    opts = {
      override = {
        default_icon = { icon = require("core.utils").get_icon("DefaultFile"), name = "default" },
        deb = { icon = "", name = "Deb" },
        lua = { icon = "", color = "#61afef", cterm_color = "74", name = "Lua" },
        lock = { icon = "󰌾", name = "Lock" },
        mp3 = { icon = "󰎆", name = "Mp3" },
        mp4 = { icon = "", name = "Mp4" },
        out = { icon = "", name = "Out" },
        ["robots.txt"] = { icon = "󰚩", color = "#e37933", cterm_color = "166", name = "Robots" },
        ttf = { icon = "", color = "#ECECEC", cterm_color = "255", name = "TrueTypeFont" },
        rpm = { icon = "", name = "Rpm" },
        woff = { icon = "", color = "#ECECEC", cterm_color = "255", name = "WebOpenFontFormat" },
        woff2 = { icon = "", color = "#ECECEC", cterm_color = "255", name = "WebOpenFontFormat2" },
        xz = { icon = "", name = "Xz" },
        zip = { icon = "", name = "Zip" },
        -- default = true,
      },
    },
    config = function(_, opts)
      require("nvim-web-devicons").setup(opts)
      pcall(vim.api.nvim_del_user_command, "NvimWebDeviconsHiTest")
    end
  },
  {
    "rachartier/tiny-devicons-auto-colors.nvim",
    event = "VeryLazy",
    config = function()
      require("tiny-devicons-auto-colors").setup({})
    end,
  }
}
