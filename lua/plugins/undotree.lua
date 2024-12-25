-- lua/plugins/undotree.lua

return {
  {
    'mbbill/undotree',
    cmd = 'UndotreeToggle',
    keys = {
      { '<Leader>fu', '<cmd>UndotreeToggle<CR>', desc = 'toggle undo tree' },
    },
  },
}
