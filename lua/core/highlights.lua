-- lua/core/highlights.lua

local colors = require("core.colors")

return {
  -- examples
  -- LspDiagnosticsUnderlineInformation = { style = config.styles.diagnostics, sp = colors.info },
  -- ['@text.uri'] = { fg = colors.cyan, style = 'underline' },
  -- Todo = { fg = colors.yellow, bg = colors.none, style = 'bold,italic' },
  -- DiagnosticError = { link = 'LspDiagnosticsDefaultError' },

  -- neotree
  -- NeoTreeGitAdded = { fg = colors.green },
  -- NeoTreeGitConflict = { fg = colors.purple },
  -- NeoTreeGitDeleted = { fg = colors.red },
  -- NeoTreeGitIgnored = { fg = colors.bg_d },
  -- NeoTreeGitModified = { fg = colors.yellow },
  -- NeoTreeGitUntracked = { fg = colors.blue },

  -- NeoTreeGitUnstaged = { fg = colors.red },
  -- NeoTreeGitStaged = { fg = colors.green },
  -- NeoTreeModified = { fg = colors.yellow },

  -- NeoTreeTabActive = { fg = colors.fg, bg = colors.red },
  -- NeoTreeTabInactive = { fg = colors.bg_d, bg = colors.red },
  -- NeoTreeIndentMarker = { fg = colors.yellow },
  -- NeoTreeDirectoryIcon = { fg = colors.fg },
  -- NeoTreeDirectoryName = { fg = colors.blue },
  -- NeoTreeSymbolicLinkTarget = { fg = colors.purple },
  -- NeoTreeRootName = { fg = colors.blue },
  -- NeoTreeFileNameOpened = { fg = colors.purple },

  -- nvim core
  -- Folded = { fg = colors.grey10 },
  -- VertSplit = { fg = colors.lblue },
  -- MsgArea = { fg = colors.grey7 },
  -- NormalFloat = { bg = colors.grey14 },
  -- FloatBorder = { bg = colors.grey14, fg = colors.grey14 },
  -- IncSearch = { style = "reverse" },

  -- completion popup
  NormalFloat = { bg = colors.border_bg },
  FloatBorder = { bg = colors.border_bg, fg = colors.purple, blend = vim.o.pumblend },
  -- FloatBorderHighlight = { bg = colors.bg_blue, fg = colors.cyan },
  -- FloatTitle = { bg = colors.green },
  -- FloatHeader = { bg = colors.yellow},
  -- FloatFooter = { bg = colors.black },

  -- Pmenu = { blend = vim.o.pumblend },
  -- PMenu = { bg = colors.red },  -- Popup menu: Normal item. hl-PmenuSel
  -- PmenuSel = { bg = colors.bg2, blend = vim.o.pumblend, pumblend = 30, }, -- Popup menu: Selected item. Combined with hl-Pmenu. hl-PmenuKind
  -- PmenuKind = { bg = colors.red },   -- Popup menu: Normal item "kind". hl-PmenuKindSel
  -- PmenuKindSel = { bg = colors.red }, -- Popup menu: Selected item "kind". hl-PmenuExtra
  -- PmenuExtra = { bg = colors.red },  -- Popup menu: Normal item "extra text". hl-PmenuExtraSel
  -- PmenuExtraSel = { bg = colors.red }, -- Popup menu: Selected item "extra text". hl-PmenuSbar
  -- PmenuSbar = { bg = colors.grey },  -- Popup menu: Scrollbar. hl-PmenuThumb
  -- PmenuThumb = { bg = colors.bg3, fg = colors.red }, -- Popup menu: Thumb of the scrollbar. hl-PmenuMatch
  -- PmenuMatch = { bg = colors.red },  -- Popup menu: Matched text in normal item. Combined with hl-Pmenu. hl-PmenuMatchSel
  -- PmenuMatchSel = { bg = colors.red }, -- Popup menu: Matched text in selected item. Combined with

  -- lsp document highlights
  -- LspReferenceText = { bg = colors.grey11, style = 'none' },
  -- LspReferenceRead = { link = 'LspReferenceText', style = 'none' },
  -- LspReferenceWrite = { link = 'LspReferenceText', style = 'none' },

  -- better quick list
  -- BqfPreviewFloat = { bg = colors.bg },
  -- BqfPreviewBorder = { bg = colors.bg, fg = colors.magenta },
  -- BqfPreviewTitle = { bg = colors.bg, fg = colors.magenta },
  -- BqfPreviewThumb
  -- BqfPreviewSbar
  -- BqfPreviewCursor
  -- BqfPreviewCursorLine
  -- BqfPreviewRange
  -- BqfPreviewBufLabel

  -- whichkey
  -- WhichKeyFloat = { bg = colors.grey14 },
  -- WhichKey = { fg = colors.magenta },
  -- WhichKeyGroup = { fg = colors.grey7 },
  -- WhichKeySeparator = { fg = colors.grey12 },
  -- WhichKeyDesc = { fg = colors.grey7 },
  -- WhichKeyValue = { fg = colors.grey7 },

  -- color columns
  -- VirtColumn = { bg = colors.bg, fg = colors.grey13 },
  -- NonText = { fg = colors.grey13 },

  --
  -- IblIndent = { fg = colors.grey13 },

  -- buffer line
  -- BufferLineIndicatorSelected = { fg = colors.cyan, bg = colors.bg },
  -- BufferLineFill = { fg = colors.fg, bg = colors.grey14 },

  -- git signs
  -- GitSignsAdd = { fg = colors.green },
  -- GitSignsChange = { fg = colors.yellow },
  -- GitSignsDelete = { fg = colors.red },

  -- GitConflictCurrent = { bg = colors.green, fg = colors.fg },
  -- GitConflictCurrentLabel = { bg = colors.green, fg = colors.fg },
  -- GitConflictIncoming = { bg = colors.red, fg = colors.bg },
  -- GitConflictIncomingLabel = { bg = colors.red, fg = colors.bg },

  -- GitHeader = { bg = colors.black },
  -- GitFooter = { bg = colors.black },

  -- lualine
  -- StatusLine = { bg = colors.bg },
  -- StatusLineNC = { bg = colors.bg },
  -- StatusLineTerm = { bg = colors.bg },

  -- telescope
  -- https://github.com/nvim-telescope/telescope.nvim/blob/master/plugin/telescope.lua
  -- TelescopeMatching = { fg = colors.magenta_light }, -- sections which match the search
  -- TelescopePreviewBorder = { bg = colors.bg, fg = colors.magenta },
  -- TelescopePreviewNormal = { bg = colors.bg, fg = colors.magenta },
  -- TelescopePreviewTitle = { bg = colors.bg, fg = colors.magenta },

  -- TelescopePromptNormal = { bg = colors.bg },
  -- TelescopePromptBorder = { bg = colors.bg, fg = colors.magenta },
  -- TelescopePromptPrefix = { bg = colors.bg },
  -- TelescopePromptTitle = { fg = colors.magenta },

  -- TelescopeResultsTitle = { fg = results },
  -- TelescopeResultsBorder = { bg = colors.bg, fg = colors.magenta },
  -- TelescopeResultsNormal = { fg = colors.grey9, bg = colors.bg }, -- results returned

  -- The current item
  -- TelescopeSelection = { fg = colors.magenta },
  -- TelescopeSelectionCaret = { fg = colors.magenta },
}
