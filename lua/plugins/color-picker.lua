-- lua/plugins/color-picker.lua

return {
  {
    "ziontee113/color-picker.nvim",
    config = true,
    event = "VeryLazy",
    keys = {
      { "<leader>fp", "<cmd>PickColor<CR>", desc = "Toggle Color Picker" },
    },
  }
}
