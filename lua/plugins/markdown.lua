-- lua/plugins/markdown.lua

return {
  {
    "iamcco/markdown-preview.nvim",
    build = "cd app && npm install",
    ft = "markdown",
    keys = {
      { "<leader>mb", "<cmd>MarkdownPreview<cr>", desc = "markdwon preview browser" },
    },
  },
  {
    "ellisonleao/glow.nvim",
    ft = "markdown",
    config = function()
      require('glow').setup({
        border = "none",
        height_ratio = 0.8,
      })
    end,
    keys = {
      { "<leader>mp", "<cmd>Glow<cr>", desc = "markdwon preview" },
    },
  },
  {
    "ixru/nvim-markdown",
    enabled = false,
    ft = "markdown",
    init = function()
      vim.cmd([[let g:vim_markdown_conceal = 2]])
    end,
  },
  {
    "prurigro/vim-markdown-concealed",
    enabled = false,
    ft = "markdown",
  },
  {
    "yaocccc/nvim-hl-mdcodeblock.lua",
    after = "nvim-treesitter",
    ft = "markdown",
    main = "hl-mdcodeblock",
    opts = {},
  },
}
