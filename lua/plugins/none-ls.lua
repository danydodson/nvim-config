-- lua/plugins/none-ls.lua

return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "gbprod/none-ls-shellcheck.nvim", -- shellcheck
    "nvimtools/none-ls-extras.nvim",  -- eslint_d
  },
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,

        null_ls.builtins.formatting.shfmt,
        require("none-ls-shellcheck.diagnostics"),
        require("none-ls-shellcheck.code_actions"),

        null_ls.builtins.diagnostics.staticcheck,

        null_ls.builtins.formatting.prettier.with({
          prefer_local = "node_modules/.bin",
          filetypes = {
            "javascript",
            "javascriptreact",
            "typescript",
            "typescriptreact",
            "vue",
            "css",
            "scss",
            "less",
            "html",
            "json",
            "jsonc",
            "yaml",
            "markdown",
            "markdown.mdx",
            "graphql",
            "handlebars",
          },
          extra_filetypes = {
            "toml",
            "svelte"
          },
          extra_args = {
            "--tabWidth", "2",
            "--semi", "true",
            "--print-width", "120",
            "--prose-wrap", "never",
          },
        }),
      },
    })
    vim.keymap.set("n", "<leader>ff", vim.lsp.buf.format, {})
  end,
}
