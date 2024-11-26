-- lua/core/ui.lua

local M = {}
local utils = require("core.utils")
local function bool2str(bool) return bool and "on" or "off" end

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

return M
