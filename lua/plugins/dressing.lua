-- lua/plugins/dressing.lua

return {
  {
    'stevearc/dressing.nvim',
    opts = {},
    config = function()
      require('dressing').setup {
        select = {
          input = { default_prompt = '➤ ' },
          backend = { 'telescope', 'fzf_lua', 'fzf', 'builtin', 'nui' },
        },
      }
    end,
  },
}
