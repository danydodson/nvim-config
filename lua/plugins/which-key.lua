-- lua/plugins/which-key.lua

return {
  {
    'folke/which-key.nvim',
    event = 'VeryLazy',
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 500
    end,
    config = function()
      local wk = require("which-key")
      wk.setup({
        show_help = false,
        show_keys = false,
      })
      wk.add({
        -- -------------------------------------------------------------------------------------
        {
          "<leader><leader>",
          function()
            require("telescope.builtin").find_files {
              find_command = { 'rg', '--files', '--iglob', '!.git', '--hidden' },
            }
          end,
          desc = "Find",
          mode = "n"
        },
        {
          "<leader>e",
          ':Neotree filesystem toggle<CR>',
          desc = "Neotree",
          mode = "n"
        },
        -- -------------------------------------------------------------------------------------
        {
          "<leader>q",
          group = "Quit"
        },
        {
          "<leader>qq",
          '<cmd>qa<cr>',
          desc = "Quit All",
          mode = "n"
        },
        -- -------------------------------------------------------------------------------------
        {
          "<leader>f",
          group = "Find"
        },
        {
          "<leader>ff",
          function()
            require("telescope.builtin").find_files {
              find_command = { 'rg', '--files', '--iglob', '!.git', '--hidden' },
            }
          end,
          desc = "Find File",
          mode = "n"
        },
        {
          "<leader>fo",
          require("telescope.builtin").oldfiles,
          desc = "Recent Files",
          mode = "n"
        },
        {
          "<leader>fg",
          require("telescope.builtin").live_grep,
          desc = "Grep Search",
          mode = "n"
        },
        {
          "<leader>fb",
          require("telescope.builtin").buffers,
          desc = "Find Buffer",
          mode = "n"
        },
        {
          "<leader>fd",
          require("telescope.builtin").git_status,
          desc = "Find Git Status",
          mode = "n"
        },
        {
          "<leader>fc",
          function()
            local config_dir = vim.env.HOME .. '/.config/nvim'
            require("telescope.builtin").find_files {
              find_command = { 'rg', '--files', '--iglob', '!.git', '--hidden', config_dir },
            }
          end,
          desc = "Find Config File",
          mode = "n"
        },
        {
          "<leader>f1",
          hidden = true
        },
        -- -------------------------------------------------------------------------------------
        {
          "<leader>/",
          group = "/"
        },
        {
          "<Leader>//",
          'gcc',
          remap = true,
          desc = "Comment Line",
          mode = "n"
        },
        {
          "<Leader>//",
          'gcc',
          remap = true,
          desc = "Comment Line",
          mode = "x"
        },
        {
          "<Leader>/O",
          'O<Esc>Vcx<Esc><cmd>normal gcc<CR>fxa<BS>',
          silent = true,
          desc = "Comment Above",
          mode = "n"
        },
        {
          "<Leader>/o",
          'o<Esc>Vcx<Esc><cmd>normal gcc<CR>fxa<BS>',
          silent = true,
          desc = "Comment Below",
          mode = "n"
        },
        {
          "<Leader>/d",
          'm`""Y""P``',
          silent = true,
          desc = "Duplicate Line",
          mode = "n"
        },
        {
          "<Leader>/d",
          '""Y""Pgv',
          silent = true,
          desc = "Duplicate Selection",
          mode = "x"
        },
        -- -------------------------------------------------------------------------------------
        {
          "<leader>b",
          group = "Buffer"
        },
        {
          "<leader>bc",
          '<cmd>:bp | bd #<cr>',
          desc = "Buffer Delete",
          mode = "n"
        },
        {
          "<leader>b]",
          '<cmd>BufferLineCyclePrev<cr>',
          desc = "Buffer Previous",
          mode = "n"
        },
        {
          "<leader>b[",
          '<cmd>BufferLineCycleNext<cr>',
          desc = "Buffer Next",
          mode = "n"
        },
        {
          "<leader>bs",
          '<cmd>vert belowright sb N<cr>',
          desc = "Split Right",
          mode = "n"
        },
        {
          "<leader>bp",
          '<cmd>BufferLinePick<cr>',
          desc = "Buffer Pick",
          mode = "n"
        },
        {
          "<leader>bk",
          '<cmd>BufferLineTogglePin<cr>',
          desc = "Buffer Pin",
          mode = "n"
        },
        -- -------------------------------------------------------------------------------------
        {
          "<leader>h",
          group = "Harpoon"
        },
        {
          "<leader>ha",
          function()
            require("harpoon"):list():add()
          end,
          desc = "Add File",
          mode = "n"
        },
        {
          "<leader>hr",
          function()
            require("harpoon"):list():remove()
          end,
          desc = "Remove File",
          mode = "n"
        },
        {
          "<leader>hh",
          function()
            require("harpoon").ui:toggle_quick_menu(require("harpoon"):list())
          end,
          desc = "Quick Menu",
          mode = "n"
        },
        {
          "<leader>hg",
          function()
            require("harpoon"):list():prev()
          end,
          desc = "Previous File",
          mode = "n"
        },
        {
          "<leader>hj",
          function()
            require("harpoon"):list():next()
          end,
          desc = "Next File",
          mode = "n"
        },
        -- -------------------------------------------------------------------------------------
        {
          "<leader>c",
          group = "Code"
        },
        {
          "<leader>cf",
          'vim.lsp.buf.format',
          desc = "Format Code",
          mode = "n"
        },
        {
          "<leader>cr",
          'vim.lsp.buf.reference',
          desc = "List References",
          mode = "n"
        },
        {
          "<leader>cd",
          'vim.lsp.buf.definition',
          desc = "Go to Definition",
          mode = "n"
        },
        {
          "<leader>ca",
          'vim.lsp.buf.code_action',
          desc = "Show Code Actions",
          mode = "n"
        },
        -- -------------------------------------------------------------------------------------
        {
          "<leader>g",
          group = "Git"
        },
        {
          "<leader>gl",
          function() require('gitsigns').blame_line { full = true } end,
          desc = "Blame Line Full",
          mode = "n"
        },
        {
          "<leader>gb",
          require('gitsigns').toggle_current_line_blame,
          desc = "Toggle Current Line Blame",
          mode = "n"
        },
        -- -------------------------------------------------------------------------------------
        {
          "<leader><tab>",
          group = "Tabs"
        },
        {
          "<leader><tab>n",
          '<cmd>tabnew<cr>',
          desc = "New Tab",
          mode = "n"
        },
        {
          "<leader><tab>d",
          '<cmd>tabclose<cr>',
          desc = "Close Tab",
          mode = "n"
        },
        {
          "<leader><tab>]",
          '<cmd>tabnext<cr>',
          desc = "Next Tab",
          mode = "n"
        },
        {
          "<leader><tab>[",
          '<cmd>tabprevious<cr>',
          desc = "Previous Tab",
          mode = "n"
        },
        -- -------------------------------------------------------------------------------------
        {
          "<leader>t",
          group = "Tools"
        },
        {
          "<leader>tp",
          '<cmd>PickColor<CR>',
          desc = "Color Picker",
          mode = "n"
        },
        {
          "<leader>tu",
          '<cmd>UndotreeToggle<CR>',
          desc = "Undo Tree",
          mode = "n"
        },
        {
          "<leader>tr",
          '<cmd>Rest run<CR>',
          desc = "HTTP Request",
          mode = "n"
        },
        -- -------------------------------------------------------------------------------------
        {
          mode = { "n", "v" },
          {
            "<leader>w",
            "<cmd>w<cr>",
            desc = "Write"
          },
        }
      })
    end

  },
}
