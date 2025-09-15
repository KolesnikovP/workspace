vim.cmd [[
  highlight Normal guibg=NONE
  highlight NormalNC guibg=NONE
  highlight LineNr guibg=NONE guifg=#52796f
  highlight CursorLineNr guibg=NONE
  highlight EndOfBuffer guibg=NONE guifg=NONE
  highlight SignColumn guibg=NONE
  highlight DiagnosticSignError guibg=NONE
  highlight DiagnosticSignWarn guibg=NONE
  highlight DiagnosticSignInfo guibg=NONE
  highlight DiagnosticSignHint guibg=NONE
  highlight NormalFloat guibg=NONE
  highlight FloatBorder guifg=#aaaaaa guibg=NONE
  highlight Pmenu guibg=NONE
  highlight PmenuSel guibg=NONE
  highlight PmenuSbar guibg=NONE
  highlight PmenuThumb guibg=NONE

  " Make Visual selection clearly visible
  " Option A: Gray 500 (lighter, more obvious)
  " highlight Visual guibg=#6B7280 guifg=NONE
  " Option B: Gray 600 (balanced, likely best fit)
  highlight Visual guibg=#4B5563 guifg=NONE
  " Option C: Slate (darker, subtle but visible)
  " highlight Visual guibg=#3A3F4B guifg=NONE

  " Neo-tree: highlight only the cursor line with same tone
  highlight NeoTreeCursorLine guibg=#4B5563 guifg=NONE

  highlight TelescopeNormal guibg=NONE
  highlight TelescopeBorder guifg=#aaaaaa guibg=NONE
  highlight TelescopePromptNormal guibg=NONE
  highlight TelescopePromptBorder guifg=#aaaaaa guibg=NONE
  highlight TelescopeResultsNormal guibg=NONE
  highlight TelescopeResultsBorder guifg=#aaaaaa guibg=NONE
  highlight TelescopePreviewNormal guibg=NONE
  highlight TelescopePreviewBorder guifg=#aaaaaa guibg=NONE

  highlight WhichKeyBorder guifg=#aaaaaa

  " Which-key text colors (regular/normal)
  highlight WhichKey guibg=NONE guifg=NONE
  highlight WhichKeyGroup guibg=NONE guifg=#f38ba8
  highlight WhichKeyDesc guibg=NONE guifg=#cdd6f4
  highlight WhichKeySeparator guibg=NONE guifg=#585b70
  highlight WhichKeyValue guibg=NONE guifg=#cdd6f4
]]
