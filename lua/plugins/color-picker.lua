-- lua/plugins/color-picker.lua

return {
  {
    "ziontee113/color-picker.nvim",
    config = true,
    event = "VeryLazy",
    keys = {
      { "<leader>tp", "<cmd>PickColor<CR>", desc = "Color Picker" },
    },
  }
}
