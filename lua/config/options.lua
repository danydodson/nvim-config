-- lua/config/options.lua

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.wrap = false
vim.opt.termguicolors = true
vim.opt.smoothscroll = true
vim.opt.scrolloff = 10
vim.opt.virtualedit = 'block'
vim.opt.laststatus = 3
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.numberwidth = 2
vim.opt.signcolumn = 'yes:1'
vim.opt.cmdheight = 0

-- vim.opt.inccommand = "nosplit"
vim.opt.pumblend = 0  -- Popup blend
vim.opt.pumheight = 10

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.showmode = false
vim.opt.ruler = false
vim.opt.showcmd = false

vim.opt.autoread = true
vim.opt.splitbelow = true
vim.opt.splitkeep = 'screen'
vim.opt.splitright = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.smartindent = true

vim.opt.hlsearch = true
vim.opt.fileencoding = 'utf-8'
vim.opt.wildignore = '*/.git,*/node_modules,*/venv,*/tmp,*.so,*.swp,*.zip,*.pyc'

vim.opt.mouse = 'a'
vim.opt.mousescroll = 'ver:1,hor:0'
vim.opt.guicursor = 'n:blinkon200,i-ci-ve:ver25'
vim.opt.listchars = { tab = '→ ', space = '·', trail = '·' }

vim.opt.conceallevel = 0
vim.opt.clipboard = 'unnamedplus'
vim.opt.fillchars = { eob = ' ' }
vim.opt.shortmess:append { s = true, I = true }
vim.opt.viewoptions:remove 'curdir'
vim.opt.backspace:append { 'nostop' }
vim.opt.diffopt:append { 'algorithm:histogram', 'linematch:60' }

vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.undofile = true
vim.opt.undolevels = 10000
vim.opt.undodir = os.getenv 'HOME' .. '/.vim/undodir'

vim.g.tmux_resizer_no_mappings = 1
vim.g.bigfile_size = 1024 * 1024 * 1.5

vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.python3_host_prog = vim.fn.exepath 'python3'

-- The next globals are toggleable with <space + l + u>
vim.g.autoformat_enabled = false -- Enable auto formatting at start.
vim.g.autopairs_enabled = false -- Enable autopairs at start.
vim.g.cmp_enabled = true -- Enable completion at start.
vim.g.icons_enabled = true -- Enable icons in the UI (disable if no nerd font is available).
vim.g.codeactions_enabled = true -- Enable displaying 💡 where code actions can be used.
-- vim.g.codelens_enabled = true -- Enable automatic codelens refreshing for lsp that support it.
vim.g.diagnostics_mode = 3 -- Set code linting (0=off, 1=only show in status line, 2=virtual text off, 3=all on).
vim.g.inlay_hints_enabled = false -- Enable always show function parameter names.
-- vim.g.lsp_round_borders_enabled = true -- Enable round borders for lsp hover and signatureHelp.
vim.g.lsp_signature_enabled = true -- Enable automatically showing lsp help as you write function parameters.
vim.g.notifications_enabled = true -- Enable notifications.
-- vim.g.semantic_tokens_enabled = true -- Enable lsp semantic tokens at start.
