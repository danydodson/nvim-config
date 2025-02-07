-- lua/config/keymaps.lua

local map = vim.keymap.set
local del = vim.keymap.del
local utils = require 'core.utils'

-- quit all
map('n', '<leader>qq', '<cmd>qa<cr>', { desc = 'quit all' })

-- save all
map({ 'i', 'x', 'n', 's' }, '<leader>qw', '<cmd>wa<cr>', { desc = 'save all' })
map({ 'i', 'x', 'n', 's' }, '<C-s>', '<cmd>wa<cr><esc>', { desc = 'save all' })

-- clear search
map('n', '<Esc>', '<cmd>nohlsearch<CR>', { desc = 'escape and clear hlsearch' })

-- lazy shortcuts
map('n', '<leader>ll', '<cmd>Lazy<CR>', { noremap = true, silent = true, desc = 'open lazy configs' })
map('n', '<leader>aa', '<cmd>Alpha<cr>', { silent = true, desc = 'open alpha' })
map('n', '<leader>pp', '<cmd>Telescope projects<CR>', { noremap = true, silent = true, desc = 'open projects' })

-- comments
del('n', 'gb')
del('n', 'gc')
map('n', '<Leader>/', 'gcc', { remap = true, desc = 'comment line' })
map('x', '<Leader>/', 'gcc', { remap = true, desc = 'comment line' })

-- blank lines
map('n', '<Leader>zL', 'O<Esc>0"_D', { remap = false, desc = 'create blank line above' })
map('n', '<Leader>zl', 'o<Esc>0"_D', { remap = false, desc = 'create blank line below' })

-- duplicate lines
map('n', '<Leader>zd', 'm`""Y""P``', { desc = 'duplicate line' })
map('x', '<Leader>zd', '""Y""Pgv', { desc = 'duplicate selection' })

-- line controls
map('n', '<S-k>', '<cmd>m .-2<cr>==', { desc = 'move up' })
map('n', '<S-j>', '<cmd>m .+1<cr>==', { desc = 'move down' })
map('i', '<S-j>', '<esc><cmd>m .+1<cr>==gi', { desc = 'move down' })
map('i', '<S-k>', '<esc><cmd>m .-2<cr>==gi', { desc = 'move up' })
map('v', '<S-j>', ":m '>+1<cr>gv=gv", { desc = 'move down' })
map('v', '<S-k>', ":m '<-2<cr>gv=gv", { desc = 'move up' })

-- tab life
map('n', '<leader><tab><tab>', '<cmd>tabnew<cr>', { desc = 'new tab' })
map('n', '<leader><tab>c', '<cmd>tabclose<cr>', { desc = 'close tab' })
map('n', '<leader><tab>n', '<cmd>tabnext<cr>', { desc = 'next tab' })
map('n', '<leader><tab>p', '<cmd>tabprevious<cr>', { desc = 'previous tab' })

-- window life
map('n', '<leader>wp', '<c-w>', { desc = 'windows', remap = true })
map('n', '<leader>w-', '<C-W>s', { remap = true, desc = 'split window below' })
map('n', '<leader>w|', '<C-W>v', { remap = true, desc = 'split window right' })
map('n', '<leader>wd', '<C-W>c', { remap = true, desc = 'delete window' })

-- terminal controls
map('t', '<C-/>', '<cmd>close<cr>', { silent = true, desc = 'hide terminal' })
map('t', '<C-w>', '<c-\\><C-n><C-w>', { silent = true, desc = 'toggle focus' })
map('t', '<esc>', '<c-\\><c-n>', { silent = true, desc = 'enter normal mode' })

-- toggle completion
if utils.is_available 'nvim-cmp' then
  map('n', '<leader>tc', require('core.ui').toggle_cmp, { desc = 'toggle completion' })
end

-- toggle lsp signature
if utils.is_available 'lsp_signature.nvim' then
  map('n', '<leader>tp', require('core.ui').toggle_lsp_signature, { desc = 'toggle lsp signature' })
end

-- toggle configs
map('n', '<leader>td', require('core.ui').toggle_diagnostics, { desc = 'toggle diagnostics' })
map('n', '<leader>tl', require('core.ui').toggle_statusline, { desc = 'toggle statusline' })
map('n', '<leader>tF', require('core.ui').toggle_autoformat, { desc = 'toggle autoformt global' })
map('n', '<leader>tN', require('core.ui').toggle_ui_notifications, { desc = 'toggle ui notifications' })
map('n', '<leader>tg', require('core.ui').toggle_signcolumn, { desc = 'toggle signcolumn' })
