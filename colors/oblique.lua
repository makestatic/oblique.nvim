-- oblique.nvim (v0.99) - bring the 99s vibes to your code
-- place in: ~/.config/nvim/colors/
-- load with: :colorscheme oblique

local c = {
  black     = "#2f3136",
  gray      = "#3b3b3e",
  white     = "#e6f0f8",
  blue      = "#3388ff",
  lightblue = "#77c7ff",
  sky       = "#2c9995",
  green     = "#38d27c",
  darkgreen = "#4b7a4e",
  brown     = "#b86b07",
  orange    = "#ff9305",
  purple    = "#b088f9",
  symbol    = "#9db0c8",
  red       = "#ff6b6b",
  bright    = "#ffffff",
  accent    = "#ff66cc",
}

vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") == 1 then vim.cmd("syntax reset") end
vim.o.background = "dark"
vim.g.colors_name = "oblique"
vim.o.termguicolors = true
vim.o.cursorline = true
vim.o.guicursor = ""

local default = {
  Normal      = { fg = c.white, bg = c.black },
  CursorLine  = { bg = c.gray },
  LineNr      = { fg = "#888888", bg = c.black },
  CursorLineNr= { fg = c.lightblue, bg = c.gray },
  SignColumn  = { bg = c.black },
  Comment     = { fg = c.darkgreen },
  Keyword     = { fg = c.lightblue },
  Type        = { fg = c.green },
  Identifier  = { fg = c.bright },
  Function    = { fg = c.orange },
  Constant    = { fg = c.orange },
  String      = { fg = c.sky },
  Number      = { fg = c.brown },
  Boolean     = { fg = c.purple },
  Delimiter   = { fg = c.symbol },
  Operator    = { fg = c.symbol },
  Error       = { fg = c.red },
  PreProc     = { fg = c.purple },
  Define      = { fg = c.purple },
  Macro       = { fg = c.purple },
  Include     = { fg = c.purple },
}

local ts = {
  ["@function"]        = { fg = c.orange },
  ["@function.call"]   = { fg = c.orange },
  ["@function.builtin"]= { fg = c.orange },
  ["@method"]          = { fg = c.orange },
  ["@method.call"]     = { fg = c.orange },
  ["@method.builtin"]  = { fg = c.orange },
  ["@variable"]        = { fg = c.bright },
  ["@variable.parameter"] = { fg = c.bright },
}

local plugins = {
  -- telescope
  TelescopeNormal       = { fg = c.white, bg = c.gray },
  TelescopeBorder       = { fg = c.symbol, bg = c.gray },
  TelescopePromptNormal = { fg = c.white, bg = c.gray },
  TelescopePromptBorder = { fg = c.symbol, bg = c.gray },
  TelescopeSelection    = { fg = c.lightblue, bg = c.black },

  -- cmp
  CmpItemAbbr         = { fg = c.white },
  CmpItemAbbrMatch    = { fg = c.lightblue },
  CmpItemKindFunction = { fg = c.orange },
  CmpItemKindVariable = { fg = c.sky },
  CmpItemKindKeyword  = { fg = c.lightblue },

  -- lualine
  StatusLine          = { fg = c.white, bg = c.gray },
  StatusLineNC        = { fg = c.symbol, bg = c.black },
  StatusLineSeparator = { fg = c.accent, bg = c.black },

  -- diagnostics / git
  DiagnosticError = { fg = c.red },
  DiagnosticWarn  = { fg = c.orange },
  DiagnosticInfo  = { fg = c.lightblue },
  DiagnosticHint  = { fg = c.green },

  DiagnosticUnderlineError = { undercurl = true, sp = c.red },
  DiagnosticUnderlineWarn  = { undercurl = true, sp = c.orange },
  DiagnosticUnderlineInfo  = { undercurl = true, sp = c.lightblue },
  DiagnosticUnderlineHint  = { undercurl = true, sp = c.green },

  GitSignsAdd    = { fg = c.green },
  GitSignsChange = { fg = c.orange },
  GitSignsDelete = { fg = c.red },

  -- nvim-tree
  NvimTreeNormal = { fg = c.white, bg = c.black },
  NvimTreeFolderName = { fg = c.lightblue },
  NvimTreeRootFolder = { fg = c.accent },

  -- bufferline
  BufferLineFill = { bg = c.black },
  BufferLineBackground = { fg = c.symbol, bg = c.black },
  BufferLineBufferSelected = { fg = c.white, bg = c.gray },

  -- TODO: add more plugins

for group, opts in pairs(default) do vim.api.nvim_set_hl(0, group, opts) end
for group, opts in pairs(ts)   do vim.api.nvim_set_hl(0, group, opts) end
for group, opts in pairs(plugins) do vim.api.nvim_set_hl(0, group, opts) end
