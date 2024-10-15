-- lua/plugins/lsp-config.lua
-- https://github.com/williamboman/mason.nvim
-- https://github.com/williamboman/mason-lspconfig.nvim
-- https://github.com/neovim/nvim-lspconfig

-- return {}

return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "cssls",
          "eslint_d",
          "gopls",
          "html",
          "lua_ls",
          "rust_analyzer",
          "ts_ls",
        },
      })
    end,
    opts = {
      auto_install = true,
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      -- local capabilities = require('cmp_nvim_lsp')

      local lspconfig = require("lspconfig")
      lspconfig.ts_ls.setup({
        -- capabilities = capabilities
      })
      lspconfig.html.setup({
        -- capabilities = capabilities
      })
      lspconfig.lua_ls.setup({
        -- capabilities = capabilities
      })

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
