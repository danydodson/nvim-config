-- lua/plugins/alpha.lua

local headers = require("core.headers")

return {
  {
    'goolord/alpha-nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    enabled = true,
    opts = function()
      local dashboard = require("alpha.themes.dashboard")
      math.randomseed(os.time())
      dashboard.section.header.val = headers[1] --headers[math.random(1, #headers)]
      dashboard.section.header.opts.hl = "DashboardHeader"

      -- Buttons
      dashboard.section.buttons.val = {
        dashboard.button("n", " New", "<cmd>ene<CR>"), -- 
        dashboard.button("e", " Recent", "<cmd>Telescope oldfiles<CR>"), -- 󰊳
        -- dashboard.button("s", "󰅌  Sessions", "<cmd>SessionManager! load_session<CR>"),
        -- dashboard.button("p", "  Projects", "<cmd>Telescope projects<CR>"),
        dashboard.button("q", " Quit", "<cmd>exit<CR>"),
        -- dashboard.button("LDR f '", " Bookmarks"),
      }

      -- Vertical margins
      dashboard.config.layout[1].val = vim.fn.max({ 2, vim.fn.floor(vim.fn.winheight(0) * 0.10) }) -- Above header
      dashboard.config.layout[3].val = vim.fn.max({ 2, vim.fn.floor(vim.fn.winheight(0) * 0.10) }) -- Above buttons
      return dashboard
    end,
    config = function(_, opts)
      require("alpha").setup(opts.config)
    end
  },
}
