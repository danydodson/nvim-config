-- lua/plugins/dashboard.lua

local icons = require("core.icons")
local headers = require("core.headers")

return {
  "nvimdev/dashboard-nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  event = "VimEnter",
  enabled = false,
  opts = {
    hide = {
      tabline = true,
      statusline = true,
    },
    disable_move = true,
    -- shortcut_type = "number",
    config = {
      center = {},
      disable_move = true,
      project = { enable = false },
      shortcut = {
        { desc = icons.ui.History .. " recent files ", group = "String",          key = "r", action = "Telescope oldfiles", },
        { desc = icons.ui.Files .. " find files ",     group = "String",          key = "f", action = "Telescope find_files", },
        { desc = icons.ui.BoldClose .. " quit ",       group = "DiagnosticError", key = "q", action = "qa", },
      },
    },
  },
  config = function(_, opts)
    opts.config.header = headers

    local function footer()
      return { "", "", "Don't Stop Until You are Proud..." }
    end

    opts.config.footer = footer()

    require("dashboard").setup(opts)
  end,

}
