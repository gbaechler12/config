
local M = {};


local colors = {
  bg = "#1a1a20",
  fg = "#f4fff8",
  red = "#c81d25",
  green = "#62a87c",
  yellow = "#ffd166",
  blue = "#2191fb",
  orange = "#fe5f55",
  magenta = "#db5375",
  gray = "#878e99",
  lightgray = "#767d88",
  brown = '#99621e',
}

function M.colorscheme()
	vim.cmd('highlight clear')
	vim.cmd('syntax reset')

	vim.o.background = 'dark';
	vim.g.colors_name = 'knuckles-night'

	local set = vim.api.nvim_set_hl
	
	set(0, "Normal", { bg = colors.bg, fg = colors.fg })
	set(0, "Visual", { bg = colors.lightgray })
	set(0, "Comment", { fg = colors.gray, italic = true })
	set(0, "Constant", { fg = colors.magenta, bold = true })
	set(0, "String", { fg = colors.brown })
	set(0, "Identifier", { fg = colors.blue })
	set(0, "Function", { fg = colors.orange })
	set(0, "Statement", { fg = colors.red })
	set(0, "Type", { fg = colors.yellow })
	set(0, "Special", { fg = colors.magenta })
	set(0, "Error", { fg = colors.red, bold = true })
end

return M
