-- lua/core/core.lua

local cmd = vim.cmd
local api = vim.api

local M = {
  is_rest = false,
  is_sql = false,
}

M.map_filetype_filename = {
  sh = "*.sh,*.zsh",
  cmake = "CMakeLists.txt",
  css = "*.css",
  cpp = "*.cpp,*.hpp",
  dart = "*.dart",
  dockerfile = "Dockerfile",
  elixir = "*.ex,*.exs",
  go = "*.go",
  haskell = "*.hs",
  html = "*.html",
  java = "*.java",
  javascript = "*.js",
  javascriptreact = "*.jsx",
  json = "*.json",
  lua = "*.lua",
  markdown = "*.md",
}
