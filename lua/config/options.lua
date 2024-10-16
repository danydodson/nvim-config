-- lua/config/options.lua

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.g.bigfile_size = 1024 * 1024 * 1.5

vim.opt.wrap = false
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.numberwidth = 2
vim.opt.virtualedit = "block"
vim.opt.termguicolors = true
vim.opt.smoothscroll = true

-- vim.opt.showmode = false
-- vim.opt.ruler = false
-- vim.opt.showcmd = false

vim.opt.cmdheight = 0
vim.opt.signcolumn = "yes:1"

vim.opt.splitbelow = true
vim.opt.splitkeep = "screen"
vim.opt.splitright = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.shiftwidth = 2

vim.opt.mouse = "a"
vim.opt.mousescroll = "ver:1,hor:0"
vim.opt.guicursor = "n:blinkon200,i-ci-ve:ver25"

vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.undofile = true
vim.opt.undolevels = 10000
vim.opt.undodir = os.getenv("HOME") .. "/.config/vim/undodir"

vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.python3_host_prog = os.getenv("HOME") .. "/.config/pyenv/versions/3.10.0/bin/python3"

vim.opt.conceallevel = 0
vim.opt.shortmess:append({ s = true, I = true })
vim.opt.clipboard = vim.env.SSH_TTY and "" or "unnamedplus"

-- package.path = package.path .. ";" .. vim.fn.expand("$HOME") .. "/.local/opt/lua/lib/luarocks/rocks-5.1/?/init.lua"
-- package.path = package.path .. ";" .. vim.fn.expand("$HOME") .. "/.local/opt/lua/lib/luarocks/rocks-5.1/?.lua"
