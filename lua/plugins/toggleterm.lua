-- lua/plugins/toggleterm.lua

return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {
      size = 20,
      open_mapping = [[<c-\>]],
      shading_factor = 2,
      shade_terminals = true,
      direction = "float",
      float_opts = {
        border = "rounded",
        winblend = 3,
        highlights = { border = "Normal", background = "Normal" },
      },
    },
  },
}
