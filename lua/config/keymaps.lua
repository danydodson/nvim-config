-- lua/config/keymaps.lua

local map = vim.keymap.set
local del = vim.keymap.del
local utils = require("core.utils")

-- quit all
map('n', '<leader>wq', '<cmd>qa<cr>', { desc = 'quit all' })

-- write all
map({ 'i', 'x', 'n', 's' }, '<leader>ww', '<cmd>wa<cr>', { desc = 'save all' })
map({ 'i', 'x', 'n', 's' }, '<C-s>', '<cmd>wa<cr><esc>', { desc = 'save all' })

--tmux-sessions
map('n', '<C-f>', '<cmd>silent !tmux neww ~/.dotfiles/bin/tms<CR>', { desc = 'tmux sessionizer' })

-- buffer controls
map('n', '<leader>b|', '<cmd>vert belowright sb N<cr>', { desc = 'buffer split right' })

-- clear search
map('n', '<Esc>', '<cmd>nohlsearch<CR>', { desc = 'escape and clear hlsearch' })

-- comments
del('n', 'gb')
del('n', 'gc')
map('n', '<Leader>/', 'gcc', { remap = true, desc = 'comment line' })
map('x', '<Leader>/', 'gcc', { remap = true, desc = 'comment line' })

-- add blank lines
map('n', '<Leader>sL', 'O<Esc>0"_D', { remap = false, desc = 'create Blank line above' })
map('n', '<Leader>sl', 'o<Esc>0"_D', { remap = false, desc = 'create Blank line below' })

-- duplicate lines
map('n', '<Leader>sd', 'm`""Y""P``', { desc = 'duplicate line' })
map('x', '<Leader>sd', '""Y""Pgv', { desc = 'duplicate selection' })

-- editor line controls
map('n', '<S-k>', '<cmd>m .-2<cr>==', { desc = 'Move Up' })
map('n', '<S-j>', '<cmd>m .+1<cr>==', { desc = 'Move Down' })
map('i', '<S-j>', '<esc><cmd>m .+1<cr>==gi', { desc = 'Move Down' })
map('i', '<S-k>', '<esc><cmd>m .-2<cr>==gi', { desc = 'Move Up' })
map('v', '<S-j>', ":m '>+1<cr>gv=gv", { desc = 'Move Down' })
map('v', '<S-k>', ":m '<-2<cr>gv=gv", { desc = 'Move Up' })

-- tab controls
map('n', '<leader><tab><tab>', '<cmd>tabnew<cr>', { desc = 'new tab' })
map('n', '<leader><tab>c', '<cmd>tabclose<cr>', { desc = 'close tab' })
map('n', '<leader><tab>n', '<cmd>tabnext<cr>', { desc = 'next tab' })
map('n', '<leader><tab>p', '<cmd>tabprevious<cr>', { desc = 'previous tab' })

map('n', '<meta-h>', 'TmuxResizeLeft<CR>', {silent = true,remap = false, desc = 'new tab' })
map('n', '<meta-j>', 'TmuxResizeDown<CR>', {silent = true,remap = false, desc = 'close tab' })
map('n', '<meta-k>', 'TmuxResizeUp<CR>', {silent = true,remap = false, desc = 'next tab' })
map('n', '<meta-l>', 'TmuxResizeRight<CR>', {silent = true,remap = false, desc = 'previous tab' })

-- window resize control
-- map('n', '<S-Up>', '<cmd>resize +1<cr>', { desc = 'Increase Window Height' })
-- map('n', '<S-Down>', '<cmd>resize -1<cr>', { desc = 'Decrease Window Height' })
-- map('n', '<S-Left>', '<cmd>vertical resize -2<cr>', { desc = 'Decrease Window Width' })
-- map('n', '<S-Right>', '<cmd>vertical resize +2<cr>', { desc = 'Increase Window Width' })

-- window life 
map('n', '<leader>pp', '<c-w>', { desc = 'windows', remap = true })
map('n', '<leader>p-', '<C-W>s', { remap = true, desc = 'split window below' })
map('n', '<leader>p|', '<C-W>v', { remap = true, desc = 'split window right' })
map('n', '<leader>pd', '<C-W>c', { remap = true, desc = 'delete window' })

-- window navigation
-- map('n', '<S-h>', '<C-w>h', { desc = 'Go to Left Window', remap = true })
-- map('n', '<S-j>', '<C-w>j', { desc = 'Go to Lower Window', remap = true })
-- map('n', '<S-k>', '<C-w>k', { desc = 'Go to Upper Window', remap = true })
-- map('n', '<S-l>', '<C-w>l', { desc = 'Go to Right Window', remap = true })

-- window resize
map('n', '<M-j>', '<cmd>resize +1<cr>', { desc = 'increase window height' })
map('n', '<M-k>', '<cmd>resize -1<cr>', { desc = 'decrease window height' })
map('n', '<M-l>', '<cmd>vertical resize -2<cr>', { desc = 'decrease window width' })
map('n', '<M-h>', '<cmd>vertical resize +2<cr>', { desc = 'increase window width' })

-- terminal controls
map('t', '<C-/>', '<cmd>close<cr>', { silent = true, desc = 'hide terminal' })
map('t', '<esc>', '<c-\\><c-n>', { silent = true, desc = 'enter normal mode' })
map('t', '<C-w>', '<c-\\><C-n><C-w>', { silent = true, desc = 'toggle focus' })

-- terminal navigation
-- map('t', '<C-Left>', '<C-\\><C-N><C-w>h', { silent = true })
-- map('t', '<C-Down>', '<C-\\><C-N><C-w>j', { silent = true })
-- map('t', '<C-Up>', '<C-\\><C-N><C-w>k', { silent = true })
-- map('t', '<C-Right>', '<C-\\><C-N><C-w>l', { silent = true })

-- toggle background
map('n', '<leader>tb', require('core.ui').toggle_background, { desc = 'toggle background' })

-- toggle diagnostics
map('n', '<leader>td', require('core.ui').toggle_diagnostics, { desc = 'toggle diagnostics' })

-- toggle statusline
map('n', '<leader>tl', require('core.ui').toggle_statusline, { desc = 'toggle statusline' })

-- toggle auto formatting buffer
map('n', '<leader>tf', require('core.ui').toggle_buffer_autoformat, { desc = 'toggle autoformat buffer' })

-- toggle auto formatting global
map('n', '<leader>tF', require('core.ui').toggle_autoformat, { desc = 'toggle autoformt global' })

-- toggle ui notifications
map('n', '<leader>tN', require('core.ui').toggle_ui_notifications, { desc = 'toggle ui notifications' })

-- toggle line numbering
map('n', '<leader>tn', require('core.ui').change_number, { desc = 'toggle change line numbering' })

-- toggle paste mode
map('n', '<leader>tP', require('core.ui').toggle_paste, { desc = 'toggle paste mode' })

-- toggle signcolum
map('n', '<leader>tg', require('core.ui').toggle_signcolumn, { desc = 'toggle signcolumn' })

-- toggle foldcolumn
map('n', '<leader>th', require('core.ui').toggle_foldcolumn, { desc = 'toggle foldcolumn' })

-- toggle autopairs
if utils.is_available 'nvim-autopairs' then
  map('n', '<leader>ta', require('core.ui').toggle_autopairs, { desc = 'toggle autopairs' })
end

-- toggle autocompletion
if utils.is_available 'nvim-cmp' then
  map('n', '<leader>tc', require('core.ui').toggle_cmp, { desc = 'toggle completion' })
end

-- toggle nvim-colorizer
if utils.is_available 'nvim-colorizer.lua' then
  map('n', '<leader>tC', '<cmd>ColorizerToggle<cr>', { desc = 'toggle color highlight' })
end

-- toggle lsp signature
if utils.is_available 'lsp_signature.nvim' then
  map('n', '<leader>tp', require('core.ui').toggle_lsp_signature, { desc = 'toggle lsp signature' })
end

-- toggle inlay hints
if vim.b.inlay_hints_enabled == nil then
  vim.b.inlay_hints_enabled = vim.g.inlay_hints_enabled
end
if vim.b.inlay_hints_enabled then
  vim.lsp.inlay_hint.enable(true, { bufnr = bufnr })
end

map('n', '<leader>tH', function()
  require('core.ui').toggle_buffer_inlay_hints(bufnr)
end, { desc = 'toggle buffer inlay hints' })
