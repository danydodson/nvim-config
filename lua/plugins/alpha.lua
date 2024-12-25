-- lua/plugins/alpha.lua

return {
  {
    'goolord/alpha-nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = function()
      local dashboard = require("alpha.themes.dashboard")
      dashboard.section.header.val = {
        [[                                          ]],
        [[        _                ___       _.--.  ]],
        [[        \`.|\..----...-'`   `-._.-'_.-'`  ]],
        [[        /  ' `         ,       __.--'     ]],
        [[        )/' _/     \   `-_,   /           ]],
        [[        `-'" `"\_  ,_.-;_.-\_ ',          ]],
        [[            _.-'_./   {_.'   ; /          ]],
        [[  bug.       {_.-``-'         {_/         ]]
      }
      dashboard.section.header.opts.hl = "DashboardHeader"
      vim.cmd("highlight DashboardHeader guifg=#F7778F")

      -- Buttons
      dashboard.section.buttons.val = {
        dashboard.button("n", "  New     ", "<cmd>ene<CR>"),
        dashboard.button("e", "󰊳  Recent  ", "<cmd>Telescope oldfiles<CR>"),
        -- dashboard.button("s", "󰅌  Sessions", "<cmd>SessionManager! load_session<CR>"),
        -- dashboard.button("p", "  Projects", "<cmd>Telescope projects<CR>"),
        dashboard.button("q", "  Quit", "<cmd>exit<CR>"),
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
