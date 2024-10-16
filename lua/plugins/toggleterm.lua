-- lua/plugins/toggleterm.lua

return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {
      size = 20,
      open_mapping = [[<c-\>]],
      direction = "horizontal",
      float_opts = {
        winblend = 3
      },
      shade_terminals = true,
    },
  },
}
