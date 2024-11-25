-- lua/core/highlights.lua

local M = {}

M.on_highlights = function(hl, c)

  -- TelescopeMatching = { fg = "$orange" },
	-- TelescopeSelection = { fg = "$fg", bg = "$bg0" },
	-- TelescopePromptBorder = { bg = "$bg0", fg = "$grey" },
	-- TelescopeResultsBorder = { bg = "$bg0", fg = "$grey" },
	-- TelescopePreviewBorder = { bg = "$bg0", fg = "$grey" },
	-- TelescopePromptTitle = { bg = "$blue", fg = "$bg0" },
	-- TelescopeResultsTitle = { bg = "$blue", fg = "$bg0" },
	-- TelescopePreviewTitle = { bg = "$blue", fg = "$bg0" },

	-- TelescopePromptPrefix = { bg = "$bg1" },
	-- TelescopePromptNormal = { bg = "$bg1" },
	-- TelescopeResultsNormal = { bg = "$bg0" },
	-- TelescopePreviewNormal = { bg = "$bg0" },

	-- PMenu = { bg = "$dark", blend = vim.o.pumblend }, -- make cmp menu transparent
	-- PMenu = { fg = "$fg", bg = "$bg", blend = vim.o.pumblend }, -- add `blend = vim.o.pumblend` to enable transparency
	-- PmenuSel = { fg = "NONE", bg = "$bg" },
	-- PmenuSbar = { bg = "$bg" },
	-- PmenuThumb = { bg = "$bg" },

  -- hl.NeoTreeGitAdded = { fg = c.green }
  -- hl.NeoTreeGitConflict = { fg = c.red }
  -- hl.NeoTreeGitDeleted = { fg = c.red }
  -- hl.NeoTreeGitIgnored = { fg = c.dark5 }
  -- hl.NeoTreeGitModified = { fg = c.yellow }
  -- hl.NeoTreeGitUntracked = { fg = c.blue }

  -- hl.NeoTreeGitUnstaged = { fg = c.red }
  -- hl.NeoTreeGitStaged = { fg = c.green }
  -- hl.NeoTreeModified = { fg = c.yellow }

  -- hl.NeoTreeTabActive = { fg = c.fg, bg = c.bg_dark }
  -- hl.NeoTreeTabInactive = { fg = c.dark5, bg = c.bg_highlight }
  -- hl.NeoTreeIndentMarker = { fg = c.fg_gutter }
  -- hl.NeoTreeDirectoryIcon = { fg = c.fg }
  -- hl.NeoTreeDirectoryName = { fg = c.fg_dark }
  -- hl.NeoTreeSymbolicLinkTarget = { fg = c.purple }
  -- hl.NeoTreeRootName = { fg = c.blue }
  -- hl.NeoTreeFileNameOpened = { fg = c.purple }

  -- hl.GitHeader = { bg = c.black }
  -- hl.GitFooter = { bg = c.black }
end

return M
