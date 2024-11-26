-- lua/config/autocmds.lua

local function augroup(name)
  return vim.api.nvim_create_augroup("lazyvim_" .. name, { clear = true })
end

local autocmd = vim.api.nvim_create_autocmd

-- don't auto comment new line
vim.api.nvim_create_autocmd({ "FileType" }, {
  desc = "Disables auto commenting next line",
  pattern = "*",
  callback = function()
    vim.cmd("set formatoptions-=cro")
  end,
})

-- highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
  group = augroup("highlight_yank"),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Auto commands below does not work in vs code
if vim.g.vscode then
  return {}
end

autocmd({ "VimEnter" }, {
  desc = "Nvim user event that trigger a few ms after nvim starts",
  callback = function()
    -- If nvim is opened passing a filename, trigger the event inmediatelly.
    if #vim.fn.argv() >= 1 then
      -- In order to avoid visual glitches.
      utils.trigger_event("User BaseDefered", true)
      utils.trigger_event("BufEnter", true) -- also, initialize tabline_buffers.
    else                                    -- Wait some ms before triggering the event.
      vim.defer_fn(function()
        utils.trigger_event("User BaseDefered")
      end, 70)
    end
  end,
})

-- check if we need to reload the file when it changed
vim.api.nvim_create_autocmd({ "FocusGained", "TermClose", "TermLeave" }, {
  group = augroup("checktime"),
  callback = function()
    if vim.o.buftype ~= "nofile" then
      vim.cmd("checktime")
    end
  end,
})

-- go to last loc when opening a buffer
-- this mean that when you open a file, you will be at the last position
vim.api.nvim_create_autocmd("BufReadPost", {
  desc = "Go to Last loc when Opening a buffer",
  callback = function()
    local mark = vim.api.nvim_buf_get_mark(0, '"')
    local lcount = vim.api.nvim_buf_line_count(0)
    if mark[1] > 0 and mark[1] <= lcount then
      pcall(vim.api.nvim_win_set_cursor, 0, mark)
    end
  end,
})

-- Terminal
vim.api.nvim_create_autocmd({ "TermOpen", "TermEnter" }, {
  desc = "Make Termainal took good",
  callback = function()
    vim.opt_local.number = false
    vim.opt_local.relativenumber = false
    vim.opt_local.spell = false
    vim.opt_local.signcolumn = "no"
    vim.opt_local.laststatus = 0
    vim.api.nvim_command("startinsert") --to start terminal in insert mood
  end,
})
vim.api.nvim_create_autocmd({ "TermLeave" }, {
  desc = "Make Termainal took good",
  callback = function()
    vim.opt_local.laststatus = 2
  end,
})

-- resize splits if window got resized
vim.api.nvim_create_autocmd({ "VimResized" }, {
  group = augroup("resize_splits"),
  callback = function()
    local current_tab = vim.fn.tabpagenr()
    vim.cmd("tabdo wincmd =")
    vim.cmd("tabnext " .. current_tab)
  end,
})

-- show cursor line only in active window
vim.api.nvim_create_autocmd({ 'InsertLeave', 'WinEnter' }, {
  group = augroup('auto_cursorline_show'),
  callback = function(event)
    if vim.bo[event.buf].buftype == '' then
      vim.opt_local.cursorline = true
    end
  end,
})
vim.api.nvim_create_autocmd({ 'InsertEnter', 'WinLeave' }, {
  group = augroup('auto_cursorline_hide'),
  callback = function()
    vim.opt_local.cursorline = false
  end,
})

-- fix conceallevel for json files
vim.api.nvim_create_autocmd({ "FileType" }, {
  group = augroup("json_conceal"),
  pattern = { "json", "jsonc", "json5" },
  callback = function()
    vim.opt_local.conceallevel = 0
  end,
})

-- autocmd to show diagnostics on CursorHold
vim.api.nvim_create_autocmd("CursorHold", {
  desc = "lsp show diagnostics on CursorHold",
  callback = function()
    local hover_opts = {
      focusable = false,
      close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
      border = border or "rounded",
      source = "always",
    }
    vim.diagnostic.open_float(nil, hover_opts)
  end,
})
