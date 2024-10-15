-- lua/plugins/neo-tree.lua
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {}

-- return {
--   "nvim-neo-tree/neo-tree.nvim",
--   branch = "v3.x",
--   dependencies = {
--     "nvim-lua/plenary.nvim",
--     "nvim-tree/nvim-web-devicons",
--     "MunifTanjim/nui.nvim",
--   },
--   config = function()
--     vim.keymap.set("n", "<C-e>", ":Neotree filesystem toggle<CR>", {})
--     vim.keymap.set("n", "<leader>bf", ":Neotree buffers reveal float<CR>", {})
--     require("neo-tree").setup({
--       close_if_last_window = true,
--     })
--   end,
-- }
