-- lua/config/options.lua

vim.g.mapleader = " " -- Set leader key.
vim.g.maplocalleader = " " -- Set local leader key.

vim.opt.number = true -- Show numberline.
vim.opt.relativenumber = true -- Show relative numberline.
vim.opt.termguicolors = true -- Enable 24-bit RGB color in the TUI.
vim.opt.cmdheight = 0 -- Hide command line unless needed.
vim.opt.signcolumn = "no" -- Hide or display the sign column.
vim.opt.cursorline = false -- Highlight the current line.
vim.opt.numberwidth = 2 --Default 2

vim.opt.tabstop = 2 -- Number of space in a tab.
vim.opt.softtabstop = 2 -- Insert two spaces instead of a tab character.
vim.opt.expandtab = true -- Enable the use of space in tab.
vim.opt.shiftwidth = 2 -- Number of spaces to use for each step of (auto)indentation.
vim.opt.wrap = false -- Prevent line wraping.
vim.opt.mouse = 'a' -- Enable mouse support in (a)ll modes.
vim.opt.backup = false --
vim.opt.swapfile = false --
vim.opt.undofile = true -- Enable persistent undo between session and reboots.
vim.opt.undodir = os.getenv("HOME") .. "/.config/vim/undodir" -- Directory of undo files.
vim.opt.scrolloff = 1000 -- Number of lines to leave before/after the cursor when scrolling.
vim.opt.sidescrolloff = 8 -- Same but for side scrolling.

vim.g.loaded_perl_provider = 0 -- Select or disable perl provider.
vim.g.loaded_ruby_provider = 0 -- Select or disable ruby provider.
vim.g.python3_host_prog = os.getenv("HOME") .. "/.config/pyenv/versions/3.10.0/bin/python3" -- Select or disable python3 provider.
