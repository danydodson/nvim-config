-- lua/core/ui.lua

local M = {}
local utils = require("core.utils")
local function bool2str(bool) return bool and "on" or "off" end

-- Change the number display modes
function M.change_number()
  local number = vim.wo.number                 -- local to window
  local relativenumber = vim.wo.relativenumber -- local to window
  if not number and not relativenumber then
    vim.wo.number = true
  elseif number and not relativenumber then
    vim.wo.relativenumber = true
  elseif number and relativenumber then
    vim.wo.number = false
  else -- not number and relativenumber
    vim.wo.relativenumber = false
  end
  utils.notify(string.format("number %s, relativenumber %s", bool2str(vim.wo.number), bool2str(vim.wo.relativenumber)))
end

--- Toggle notifications for UI toggles
function M.toggle_ui_notifications()
  vim.g.notifications_enabled = not vim.g.notifications_enabled
  utils.notify(string.format("Notifications %s", bool2str(vim.g.notifications_enabled)))
end

-- Toggle auto format
function M.toggle_autoformat()
  vim.g.autoformat_enabled = not vim.g.autoformat_enabled
  utils.notify(string.format("Global autoformatting %s", bool2str(vim.g.autoformat_enabled)))
end

-- Toggle autopairs
function M.toggle_autopairs()
  local ok, autopairs = pcall(require, "nvim-autopairs")
  if ok then
    if autopairs.state.disabled then
      autopairs.enable()
    else
      autopairs.disable()
    end
    vim.g.autopairs_enabled = autopairs.state.disabled
    utils.notify(string.format("autopairs %s", bool2str(not autopairs.state.disabled)))
  else
    utils.notify "autopairs not available"
  end
end

-- Toggle background="dark"|"light"
function M.toggle_background()
  vim.go.background = vim.go.background == "light" and "dark" or "light"
  utils.notify(string.format("background=%s", vim.go.background))
end

-- Toggle cmp entrirely
function M.toggle_cmp()
  vim.g.cmp_enabled = not vim.g.cmp_enabled
  local ok, _ = pcall(require, "cmp")
  utils.notify(ok and string.format("completion %s", bool2str(vim.g.cmp_enabled)) or "completion not available")
end

-- Toggle lsp signature
function M.toggle_lsp_signature()
  local state = require('lsp_signature').toggle_float_win()
  utils.notify(string.format("lsp signature %s", bool2str(state)))
end

-- Toggle buffer local auto format
function M.toggle_buffer_autoformat(bufnr)
  bufnr = bufnr or 0
  local old_val = vim.b[bufnr].autoformat_enabled
  if old_val == nil then old_val = vim.g.autoformat_enabled end
  vim.b[bufnr].autoformat_enabled = not old_val
  utils.notify(string.format("Buffer autoformatting %s", bool2str(vim.b[bufnr].autoformat_enabled)))
end

-- Toggle signcolumn="auto"|"no"
function M.toggle_signcolumn()
  if vim.wo.signcolumn == "no" then
    vim.wo.signcolumn = "yes"
  elseif vim.wo.signcolumn == "yes" then
    vim.wo.signcolumn = "auto"
  else
    vim.wo.signcolumn = "no"
  end
  utils.notify(string.format("signcolumn=%s", vim.wo.signcolumn))
end

-- Toggle laststatus=3|2|0
function M.toggle_statusline()
  local laststatus = vim.opt.laststatus:get()
  local status
  if laststatus == 0 then
    vim.opt.laststatus = 2
    status = "local"
  elseif laststatus == 2 then
    vim.opt.laststatus = 3
    status = "global"
  elseif laststatus == 3 then
    vim.opt.laststatus = 0
    status = "off"
  end
  utils.notify(string.format("statusline %s", status))
end

-- Toggle foldcolumn=0|1
local last_active_foldcolumn
function M.toggle_foldcolumn()
  local curr_foldcolumn = vim.wo.foldcolumn
  if curr_foldcolumn ~= "0" then last_active_foldcolumn = curr_foldcolumn end
  vim.wo.foldcolumn = curr_foldcolumn == "0" and (last_active_foldcolumn or "1") or "0"
  utils.notify(string.format("foldcolumn=%s", vim.wo.foldcolumn))
end

--- Toggle diagnostics
function M.toggle_diagnostics()
  vim.g.diagnostics_mode = (vim.g.diagnostics_mode - 1) % 4
  vim.diagnostic.config(require("base.utils.lsp").diagnostics[vim.g.diagnostics_mode])
  if vim.g.diagnostics_mode == 0 then
    utils.notify "diagnostics off"
  elseif vim.g.diagnostics_mode == 1 then
    utils.notify "only status diagnostics"
  elseif vim.g.diagnostics_mode == 2 then
    utils.notify "virtual text off"
  else
    utils.notify "all diagnostics on"
  end
end

-- Toggle paste
function M.toggle_paste()
  vim.opt.paste = not vim.opt.paste:get() -- local to window
  utils.notify(string.format("paste %s", bool2str(vim.opt.paste:get())))
end

return M
