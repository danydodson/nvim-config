-- lua/config/keymaps.lua

local map = vim.keymap.set

-- save file
map({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save File" })

-- quit all
map("n", "<leader>qq", "<cmd>qa<cr>", { desc = "Quit All" })

-- clear search
map({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and Clear hlsearch" })

-- better indenting
map("v", "<", "<gv")
map("v", ">", ">gv")

-- commenting in editor
map("n", "gcO", "o<esc>Vcx<esc><cmd>normal gcc<cr>fxa<bs>", { desc = "Add Comment Below" })
map("n", "gco", "O<esc>Vcx<esc><cmd>normal gcc<cr>fxa<bs>", { desc = "Add Comment Above" })

-- launch lazy
map("n", "<leader>l", "<cmd>Lazy<cr>", { desc = "Lazy" })

-- move lines in the editor
map("n", "<C-k>", "<cmd>m .-2<cr>==", { desc = "Move Up" })
map("n", "<C-j>", "<cmd>m .+1<cr>==", { desc = "Move Down" })
map("i", "<C-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
map("i", "<C-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
map("v", "<C-j>", ":m '>+1<cr>gv=gv", { desc = "Move Down" })
map("v", "<C-k>", ":m '<-2<cr>gv=gv", { desc = "Move Up" })

-- buffer life control
map("n", "[b", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
map("n", "]b", "<cmd>bnext<cr>", { desc = "Next Buffer" })
map("n", "<leader>bd", "<cmd>:bd<cr>", { desc = "Delete Buffer and Window" })

-- terminal control
map("t", "<C-/>", "<cmd>close<cr>", { silent = true, desc = "Hide Terminal" })
map("t", "<esc>", "<c-\\><c-n>", { silent = true, desc = "Enter Normal Mode" })
map("t", "<C-w>", "<c-\\><C-n><C-w>", { silent = true, desc = "Toggle Focus" })

-- terminal better navigation
map("n", "<C-Left>", "<C-w>h", { silent = true, noremap = true })
map("n", "<C-Down>", "<C-w>j", { silent = true, noremap = true })
map("n", "<C-Up>", "<C-w>k", { silent = true, noremap = true })
map("n", "<C-Right>", "<C-w>l", { silent = true, noremap = true })

-- terminal better navigation
map("t", "<C-Left>", "<C-\\><C-N><C-w>h", { silent = true })
map("t", "<C-Down>", "<C-\\><C-N><C-w>j", { silent = true })
map("t", "<C-Up>", "<C-\\><C-N><C-w>k", { silent = true })
map("t", "<C-Right>", "<C-\\><C-N><C-w>l", { silent = true })

-- tabs life control
map("n", "<leader><tab><tab>", "<cmd>tabnew<cr>", { desc = "New Tab" })
map("n", "<leader><tab>]", "<cmd>tabnext<cr>", { desc = "Next Tab" })
map("n", "<leader><tab>d", "<cmd>tabclose<cr>", { desc = "Close Tab" })
map("n", "<leader><tab>[", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })

-- windows life control
map("n", "<leader>w", "<c-w>", { desc = "Windows", remap = true })
map("n", "<leader>-", "<C-W>s", { desc = "Split Window Below", remap = true })
map("n", "<leader>|", "<C-W>v", { desc = "Split Window Right", remap = true })
map("n", "<leader>wd", "<C-W>c", { desc = "Delete Window", remap = true })

-- window focus control
map("n", "<S-h>", "<C-w>h", { desc = "Go to Left Window", remap = true })
map("n", "<S-j>", "<C-w>j", { desc = "Go to Lower Window", remap = true })
map("n", "<S-k>", "<C-w>k", { desc = "Go to Upper Window", remap = true })
map("n", "<S-l>", "<C-w>l", { desc = "Go to Right Window", remap = true })

-- window resize control
map("n", "<S-Up>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
map("n", "<S-Down>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
map("n", "<S-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
map("n", "<S-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })

-- better up/down
map({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
map({ "n", "x" }, "<Down>", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
map({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })
map({ "n", "x" }, "<Up>", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })
