-- lua/config/keymaps.lua

local map = vim.keymap.set
local del = vim.keymap.del
local is_available = utils.is_available

-- quit all
map('n', '<leader>wq', '<cmd>qa<cr>', { desc = 'File Quit All' })

-- write all
map('n', '<leader>ww', '<cmd>wa<cr>', { desc = 'File Save All' })

-- save file
map({ 'i', 'x', 'n', 's' }, '<C-s>', '<cmd>w<cr><esc>', { desc = 'File Save' })

--tmux-sessions
map('n', '<C-f>', '<cmd>silent !tmux neww ~/.local/scripts/tmux-sessionizer<CR>', { desc = 'Tmux Sessionizer' })

-- move to the first non-blank character of the line
map('n', "gj", "gj^")
map('n', "gk", "gk^")

-- create a new blank lines
map('n', "<Leader>fL", 'O<Esc>0"_D', { remap = false, desc = 'File Create Line Above' })
map('n', "<Leader>fl", 'o<Esc>0"_D', { remap = false, desc = 'File Create Line Below' })

-- duplicate lines without affecting clipboard
map('n', '<Leader>fd', 'm`""Y""P``', { desc = 'File Duplicate Line' })
map('x', '<Leader>fd', '""Y""Pgv', { desc = 'File Duplicate Selection' })

-- comments
del('n', 'gb')
del('n', 'gc')
map('n', '<Leader>f/', 'gcc', { remap = true, desc = 'File Comment Line' })
map('x', '<Leader>f/', 'gcc', { remap = true, desc = 'File Comment Line' })

-- comments above/below
map('n', '<Leader>fO', 'O<Esc>Vcx<Esc><cmd>normal gcc<CR>fxa<BS>', { silent = true, desc = 'File Comment Line Above' })
map('n', '<Leader>fo', 'o<Esc>Vcx<Esc><cmd>normal gcc<CR>fxa<BS>', { silent = true, desc = 'File Comment Line Below' })

-- clear search
map('n', '<Esc>', '<cmd>nohlsearch<CR>', { desc = 'Escape and Clear hlsearch' })

-- move lines in the editor
map('n', '<C-k>', '<cmd>m .-2<cr>==', { desc = 'Move Up' })
map('n', '<C-j>', '<cmd>m .+1<cr>==', { desc = 'Move Down' })
map('i', '<C-j>', '<esc><cmd>m .+1<cr>==gi', { desc = 'Move Down' })
map('i', '<C-k>', '<esc><cmd>m .-2<cr>==gi', { desc = 'Move Up' })
map('v', '<C-j>', ":m '>+1<cr>gv=gv", { desc = 'Move Down' })
map('v', '<C-k>', ":m '<-2<cr>gv=gv", { desc = 'Move Up' })

-- open buffer in split
map('n', '<leader>bs', '<cmd>vert belowright sb N<cr>', { desc = 'Buffer Split Right' })

-- tabs life control
map('n', '<leader><tab><tab>', '<cmd>tabnew<cr>', { desc = 'New Tab' })
map('n', '<leader><tab>n', '<cmd>tabnext<cr>', { desc = 'Next Tab' })
map('n', '<leader><tab>c', '<cmd>tabclose<cr>', { desc = 'Close Tab' })
map('n', '<leader><tab>p', '<cmd>tabprevious<cr>', { desc = 'Previous Tab' })

-- windows life control
-- map('n', '<leader>w', '<c-w>', { desc = 'Windows', remap = true })
-- map('n', '<leader>w-', '<C-W>s', { desc = 'Split Window Below', remap = true })
-- map('n', '<leader>w|', '<C-W>v', { desc = 'Split Window Right', remap = true })
-- map('n', '<leader>wd', '<C-W>c', { desc = 'Delete Window', remap = true })

-- window focus control
map('n', '<S-h>', '<C-w>h', { desc = 'Go to Left Window', remap = true })
map('n', '<S-j>', '<C-w>j', { desc = 'Go to Lower Window', remap = true })
map('n', '<S-k>', '<C-w>k', { desc = 'Go to Upper Window', remap = true })
map('n', '<S-l>', '<C-w>l', { desc = 'Go to Right Window', remap = true })

-- window resize control
map('n', '<S-Up>', '<cmd>resize +1<cr>', { desc = 'Increase Window Height' })
map('n', '<S-Down>', '<cmd>resize -1<cr>', { desc = 'Decrease Window Height' })
map('n', '<S-Left>', '<cmd>vertical resize -2<cr>', { desc = 'Decrease Window Width' })
map('n', '<S-Right>', '<cmd>vertical resize +2<cr>', { desc = 'Increase Window Width' })

-- toggle background
map('n', '<leader>tb', require("core.ui").toggle_background, { desc = "Toggle Background" })
-- toggle diagnostics
-- map('n', '<leader>td', require("core.ui").toggle_diagnostics, { desc = "Toggle Diagnostics" })
-- toggle statusline
map('n', '<leader>tl', require("core.ui").toggle_statusline, { desc = "Toggle Statusline" })
-- toggle auto formatting buffer
map('n', '<leader>tf', require("core.ui").toggle_buffer_autoformat, { desc = "Toggle Autoformt (B)" })
-- toggle auto formatting global
map('n', '<leader>tF', require("core.ui").toggle_autoformat, { desc = "Toggle Autoformt (G)" })
-- toggle ui notifications
-- map('n', '<leader>tN', require("core.ui").toggle_ui_notifications, { desc = "Toggle UI Notifications" })
-- toggle indent settings
-- map('n', '<leader>tD', require("core.ui").set_indent, { desc = "Toggle Change Indent Setting" })
-- toggle line numbering
-- map('n', '<leader>tn', require("core.ui").change_number, { desc = "Toggle Change Line Numbering" })
-- toggle paste mode
-- map('n', '<leader>tP', require("core.ui").toggle_paste, { desc = " Toggle Paste Mode" })
-- toggle spellcheck
-- map('n', '<leader>ts', require("core.ui").toggle_spell, { desc = " Toggle Spellcheck" })
-- toggle tabline
-- map('n', '<leader>tt', require("core.ui").toggle_tabline, { desc = " Toggle Tabline" })
-- toggle url highlight
-- map('n', '<leader>tu', require("core.ui").toggle_url_effect, { desc = " Toggle URL Highlight" })
-- toggle line wrap
-- map('n', '<leader>tw', require("core.ui").toggle_wrap, { desc = "Wrap" })
-- toggle syntax highlight
-- map('n', '<leader>ty', require("core.ui").toggle_buffer_syntax, { desc = " Toggle Syntax highlight" })
-- toggle signcolum
map('n', '<leader>tg', require("core.ui").toggle_signcolumn, { desc = "Toggle Signcolumn" })
-- toggle foldcolumn
-- map('n', '<leader>th', require("core.ui").toggle_foldcolumn, { desc = "Toggle Foldcolumn" })

-- toggle autopairs
if is_available "nvim-autopairs" then
  map('n', '<leader>ta', require("core.ui").toggle_autopairs, { desc = "Toggle Autopairs" })
end

-- toggle autocompletion
if is_available "nvim-cmp" then
  map('n', '<leader>tc', require("core.ui").toggle_cmp, { desc = "Toggle Completion" })
end

-- toggle nvim-colorizer
if is_available "nvim-colorizer.lua" then
  map('n', '<leader>tC', '<cmd>ColorizerToggle<cr>', { desc = 'Toggle Color Highlight' })
end

-- toggle lsp signature
-- if is_available "lsp_signature.nvim" then
--   map('n', '<leader>tp', require("core.ui").toggle_lsp_signature, { desc = " Toggle LSP Signature" })
-- end

-- toggle animations
-- if is_available "mini.animate" then
--   map('n', '<leader>tA', require("core.ui").toggle_animations, { desc = " Toggle Animations" })
-- end

-- better up/down
map({ 'n', 'x' }, 'j', "v:count == 0 ? 'gj' : 'j'", { desc = 'Down', expr = true, silent = true })
map({ 'n', 'x' }, '<Down>', "v:count == 0 ? 'gj' : 'j'", { desc = 'Down', expr = true, silent = true })
map({ 'n', 'x' }, 'k', "v:count == 0 ? 'gk' : 'k'", { desc = 'Up', expr = true, silent = true })
map({ 'n', 'x' }, '<Up>', "v:count == 0 ? 'gk' : 'k'", { desc = 'Up', expr = true, silent = true })

-- terminal control
map('t', '<C-/>', '<cmd>close<cr>', { silent = true, desc = 'Hide Terminal' })
map('t', '<esc>', '<c-\\><c-n>', { silent = true, desc = 'Enter Normal Mode' })
map('t', '<C-w>', '<c-\\><C-n><C-w>', { silent = true, desc = 'Toggle Focus' })

-- terminal better navigation
map('n', '<C-Left>', '<C-w>h', { silent = true, noremap = true })
map('n', '<C-Down>', '<C-w>j', { silent = true, noremap = true })
map('n', '<C-Up>', '<C-w>k', { silent = true, noremap = true })
map('n', '<C-Right>', '<C-w>l', { silent = true, noremap = true })

-- terminal better navigation
map('t', '<C-Left>', '<C-\\><C-N><C-w>h', { silent = true })
map('t', '<C-Down>', '<C-\\><C-N><C-w>j', { silent = true })
map('t', '<C-Up>', '<C-\\><C-N><C-w>k', { silent = true })
map('t', '<C-Right>', '<C-\\><C-N><C-w>l', { silent = true })
