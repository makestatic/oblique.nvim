-- oblique.nvim (v1.0) - bring the 00s vibes to your code
-- place in: ~/.config/nvim/colors/
-- load with: :colorscheme oblique

local bg_mode = vim.o.background or "dark"

local colors = {}

if bg_mode == "light" then
	colors = {
		black = "#f4f4f4",
		gray = "#e0e0e0",
		white = "#1e1e1e",
		blue = "#005faf",
		cr = "#e5e5e5",
		lightblue = "#007acc",
		sky = "#008b8b",
		green = "#007f4f",
		darkgreen = "#94a896",
		brown = "#9f5500",
		orange = "#c75a00",
		purple = "#7a3ec8",
		red = "#c73e3e",
		bright = "#000000",
		accent = "#ff4fa1",
		symbol = "#000000",
	}
	vim.cmd([[
		hi Cursor guifg=NONE guibg=Black
		set guicursor=i-r-o-n-v-c:block-Cursor
	]])
else
	colors = {
		black = "#000000",
		gray = "#3f3f3f",
		white = "#e6f0f8",
		blue = "#3388ff",
		cr = "#4f4f4f",
		lightblue = "#3e95c4",
		sky = "#2c9995",
		green = "#38d27c",
		darkgreen = "#4b7a4e",
		brown = "#b86b07",
		orange = "#ff9305",
		purple = "#b088f9",
		red = "#ff6b6b",
		bright = "#ffffff",
		accent = "#ff66cc",
		symbol = "#ffffff",
	}
	vim.cmd([[
		hi Cursor guifg=NONE guibg=White
		set guicursor=i-r-o-n-v-c:block-Cursor
	]])
end

local c = colors

vim.cmd("hi clear")
if vim.fn.exists("syntax_on") == 1 then
	vim.cmd("syntax reset")
end
vim.g.colors_name = "oblique"
vim.o.termguicolors = true
vim.o.cursorline = true

local default = {
	Normal = { fg = c.white, bg = c.gray },
	CursorLine = { bg = c.cr },
	LineNr = { fg = "#888888", bg = c.gray },
	CursorLineNr = { fg = c.green, bg = c.gray },
	SignColumn = { bg = c.gray },
	Comment = { fg = c.darkgreen },
	Keyword = { fg = c.lightblue },
	Type = { fg = c.green },
	Identifier = { fg = c.bright },
	Function = { fg = c.orange },
	Constant = { fg = c.orange },
	String = { fg = c.sky },
	Number = { fg = c.brown },
	Boolean = { fg = c.purple },
	Delimiter = { fg = c.symbol },
	Operator = { fg = c.symbol },
	Error = { fg = c.red },
	PreProc = { fg = c.purple },
	Define = { fg = c.purple },
	Macro = { fg = c.purple },
	Include = { fg = c.purple },
}

local ts = {
	["@function"] = { fg = c.orange },
	["@function.call"] = { fg = c.orange },
	["@function.builtin"] = { fg = c.orange },
	["@method"] = { fg = c.orange },
	["@method.call"] = { fg = c.orange },
	["@method.builtin"] = { fg = c.orange },

	["@variable"] = { fg = c.bright },
	["@variable.parameter"] = { fg = c.bright },
	["@variable.builtin"] = { fg = c.bright },

	["@type"] = { fg = c.green },
	["@type.builtin"] = { fg = c.green },
	["@type.definition"] = { fg = c.green },
	["@type.qualifier"] = { fg = c.green },
	["@field"] = { fg = c.green },
	["@property"] = { fg = c.green },
	["@namespace"] = { fg = c.green },
}

local plugins = {
	-- telescope
	TelescopeNormal = { fg = c.white, bg = c.gray },
	TelescopeBorder = { fg = c.symbol, bg = c.gray },
	TelescopePromptNormal = { fg = c.white, bg = c.gray },
	TelescopePromptBorder = { fg = c.symbol, bg = c.gray },
	TelescopeSelection = { fg = c.lightblue, bg = c.black },

	-- cmp
	CmpItemAbbr = { fg = c.white },
	CmpItemAbbrMatch = { fg = c.lightblue },
	CmpItemKindFunction = { fg = c.orange },
	CmpItemKindVariable = { fg = c.sky },
	CmpItemKindKeyword = { fg = c.lightblue },
	CmpItemKindType = { fg = c.green },

	-- lualine
	StatusLine = { fg = c.white, bg = c.gray },
	StatusLineNC = { fg = c.symbol, bg = c.black },
	StatusLineSeparator = { fg = c.accent, bg = c.black },

	-- diagnostics / git
	DiagnosticError = { fg = c.red },
	DiagnosticWarn = { fg = c.orange },
	DiagnosticInfo = { fg = c.lightblue },
	DiagnosticHint = { fg = c.green },

	DiagnosticUnderlineError = { undercurl = true, sp = c.red },
	DiagnosticUnderlineWarn = { undercurl = true, sp = c.orange },
	DiagnosticUnderlineInfo = { undercurl = true, sp = c.lightblue },
	DiagnosticUnderlineHint = { undercurl = true, sp = c.green },

	GitSignsAdd = { fg = c.green },
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
}

for group, opts in pairs(default) do
	vim.api.nvim_set_hl(0, group, opts)
end
for group, opts in pairs(ts) do
	vim.api.nvim_set_hl(0, group, opts)
end
for group, opts in pairs(plugins) do
	vim.api.nvim_set_hl(0, group, opts)
end
