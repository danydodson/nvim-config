-- lua/config/options.lua

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.opt.smoothscroll = true
vim.opt.termguicolors = true
vim.opt.wrap = false
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cmdheight = 0
vim.opt.showmode = false
vim.opt.signcolumn = "no"
vim.opt.cursorline = true
vim.opt.numberwidth = 2
vim.opt.virtualedit = "block"
vim.opt.smoothscroll = true

vim.opt.splitbelow = true
vim.opt.splitkeep = "screen"
vim.opt.splitright = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.shiftwidth = 2

vim.opt.mouse = "r"
vim.opt.clipboard = vim.env.SSH_TTY and "" or "unnamedplus"

vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.undofile = true
vim.opt.undolevels = 10000
vim.opt.undodir = os.getenv("HOME") .. "/.config/vim/undodir"

vim.o.shortmess = vim.o.shortmess .. "I"

vim.g.bigfile_size = 1024 * 1024 * 1.5
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.python3_host_prog = os.getenv("HOME") .. "/.config/pyenv/versions/3.10.0/bin/python3"
