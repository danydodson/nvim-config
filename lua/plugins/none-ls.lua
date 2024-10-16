-- lua/plugins/none-ls.lua

return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "gbprod/none-ls-shellcheck.nvim", -- shellcheck
    "nvimtools/none-ls-extras.nvim",  -- eslint_d
  },
  config = function()
    local null_ls = require("null-ls")

    -- local code_actions = null_ls.builtins.code_actions
    -- local diagnostics = null_ls.builtins.diagnostics
    -- local formatting = null_ls.builtins.formatting

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,

        null_ls.builtins.formatting.shfmt,
        require("none-ls-shellcheck.diagnostics"),
        require("none-ls-shellcheck.code_actions"),

        -- require("none-ls.diagnostics.eslint_d"),
        -- require("none-ls.code_actions.eslint_d"),

        -- code_actions.eslint.with({
        --   prefer_local = "node_modules/.bin",
        -- }),
        -- diagnostics.eslint.with({
        --   prefer_local = "node_modules/.bin",
        -- }),
        -- formatting.prettierd.with({
        --   prefer_local = "node_modules/.bin",
        -- }),

        null_ls.builtins.diagnostics.staticcheck,

        null_ls.builtins.formatting.prettier.with({
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
