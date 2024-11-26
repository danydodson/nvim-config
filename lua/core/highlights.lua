-- lua/core/highlights.lua

return {
  --
  TelescopeMatching = { fg = '$orange' },
  TelescopeSelection = { bg = '$bg0', fg = '$fg' },
  TelescopePromptBorder = { bg = '$bg0', fg = '$grey' },
  TelescopeResultsBorder = { bg = '$bg0', fg = '$grey' },
  TelescopePreviewBorder = { bg = '$bg0', fg = '$grey' },
  TelescopePromptTitle = { bg = '$blue', fg = '$bg0' },
  TelescopeResultsTitle = { bg = '$blue', fg = '$bg0' },
  TelescopePreviewTitle = { bg = '$blue', fg = '$bg0' },
  TelescopePromptPrefix = { bg = '$bg0', fg = '$fg' },
  TelescopePromptNormal = { bg = '$bg0', fg = '$fg' },
  TelescopeResultsNormal = { bg = '$bg0' },
  TelescopePreviewNormal = { bg = '$bg0' },
  --
  -- PMenu = { fg = "$fg", bg = "$bg0" }, -- make cmp menu transparent
  -- PMenu = { fg = "$fg", bg = "$bg0", blend = vim.o.pumblend }, -- add `blend = vim.o.pumblend` to enable transparency
  -- PmenuSel = { fg = "NONE", bg = "$bg0" },
  -- PmenuSbar = { bg = "$bg0" },
  -- PmenuThumb = { bg = "$red" },
  --
  -- NeoTreeGitAdded = { fg = "$green" },
  -- NeoTreeGitConflict = { fg = "$purple" },
  -- NeoTreeGitDeleted = { fg = "$red" },
  -- NeoTreeGitIgnored = { fg = "$bg_d" },
  -- NeoTreeGitModified = { fg = "$yellow" },
  -- NeoTreeGitUntracked = { fg = "$blue" },
  --
  -- NeoTreeGitUnstaged = { fg = "$red" },
  -- NeoTreeGitStaged = { fg = "$green" },
  -- NeoTreeModified = { fg = "$yellow" },
  --
  -- NeoTreeTabActive = { fg = "$fg", bg = "$red" },
  -- NeoTreeTabInactive = { fg = "$bg_d", bg = "$red" },
  -- NeoTreeIndentMarker = { fg = "$yellow" },
  -- NeoTreeDirectoryIcon = { fg = "$fg" },
  -- NeoTreeDirectoryName = { fg = "$blue" },
  -- NeoTreeSymbolicLinkTarget = { fg = "$purple" },
  -- NeoTreeRootName = { fg = "$blue" },
  -- NeoTreeFileNameOpened = { fg = "$purple" },
  --
  -- GitHeader = { bg = "$black" },
  -- GitFooter = { bg = "$black" },
}
