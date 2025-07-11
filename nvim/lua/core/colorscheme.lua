
local M = {};


local colors = {
  bg = "#1a1a20",
  fg = "#f4fff8",
  red = "#c81d25",
  green = "#62a87c",
  yellow = "#fee440",
  yellow2 = '#ffe6a7',
  blue = "#2191fb",
  orange = "#fb8500",
  magenta = "#db5375",
  gray = "#878e99",
  lightgray = "#767d88",
  brown = '#99621e',
  violet = '#c8b6ff',
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
	set(0, "LineNr", { fg = colors.fg })

  set(0, "Constant", { fg = colors.magenta, bold = true })

  set(0, "String", { fg = colors.brown })
	set(0, "Character", { fg = colors.brown })
	set(0, "SpecialChar", { fg = colors.violet })
	set(0, "Number", { fg = colors.green })
	set(0, "Float", { fg = colors.green })
	set(0, "Boolean", { fg = colors.red })
	
	set(0, "Type", { fg = colors.yellow })
  set(0, "Identifier", { fg = colors.yellow2 })
	set(0, "Function", { fg = colors.orange })
	
  set(0, "Keyword", { fg = colors.red })
	set(0, "Statement", { fg = colors.red })
	set(0, "Repeat", { fg = colors.red })
	set(0, "Label", { fg = colors.red })
	
  set(0, "PreProc", { fg = colors.magenta })
  set(0, "Macros", { fg = colors.magenta })
  set(0, "Define", { fg = colors.magenta })

	set(0, "Special", { fg = colors.magenta })
	set(0, "Error", { fg = colors.red, bold = true })
end

return M
