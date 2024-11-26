-- lua/config/options.lua

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.wrap = false
vim.opt.termguicolors = true
vim.opt.virtualedit = "block"
vim.opt.smoothscroll = true
vim.opt.scrolloff = 10

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.numberwidth = 2
vim.opt.signcolumn = "yes:1"
vim.opt.cmdheight = 0

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.showmode = false
vim.opt.ruler = false
vim.opt.showcmd = false

vim.g.autoformat_enabled = false
vim.g.autopairs_enabled = false
vim.g.cmp_enabled = false

vim.opt.autoread = true
vim.opt.splitbelow = true
vim.opt.splitkeep = "screen"
vim.opt.splitright = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.smartindent = true

vim.opt.mouse = "a"
vim.opt.hlsearch = true
vim.opt.mousescroll = "ver:1,hor:0"
vim.opt.guicursor = "n:blinkon200,i-ci-ve:ver25"
vim.opt.wildignore = "*/.git,*/node_modules,*/venv,*/tmp,*.so,*.swp,*.zip,*.pyc"
vim.opt.listchars = { tab = "→ ", space = "·", trail = "·" }

vim.opt.conceallevel = 0
vim.opt.clipboard = "unnamedplus"
vim.opt.fillchars = { eob = " " }
vim.opt.shortmess:append({ s = true, I = true })

vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.undofile = true
vim.opt.undolevels = 10000
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

vim.g.bigfile_size = 1024 * 1024 * 1.5

vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.python3_host_prog = vim.fn.exepath("python3")
