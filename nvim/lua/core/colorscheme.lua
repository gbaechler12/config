local M = {};


local knight_colors = {
  bg = "#1a1a20",
  bg_darker = "#14141a",
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

local kzen_colors = {
  bg        = "#f2efe6",
  fg        = "#2e2e2e",
  muted     = "#6e6e6e",
  accent    = "#3a7ecf",
  cursor    = "#3a7ecf",
  selection = "#dce6f8",
  red       = "#e06c75",
  green     = "#98c379",
  yellow    = "#e5c07b",
  blue      = "#61afef",
  purple    = "#c678dd",
  cyan      = "#56b6c2",
}

function M.colorscheme(name)
	vim.cmd('highlight clear')
	vim.cmd('syntax reset')

	vim.g.colors_name = name

	local set = vim.api.nvim_set_hl

  if name == "knuckles-night" then
	  vim.o.background = 'dark'
    local colors = knight_colors
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

    set(0, "RenderMarkdownCode", { bg = colors.bg_darker })
    set(0, "RenderMarkdownCodeBorder", { bg = colors.bg })
  elseif name == "knuckles-zen" then
    vim.o.background = 'light'
    local colors = kzen_colors
    set(0, "Normal", { bg = colors.bg, fg = colors.fg })
    set(0, "Visual", { bg = colors.selection })
    set(0, "Comment", { fg = colors.muted, italic = true })
    set(0, "LineNr", { fg = colors.fg })

    set(0, "Constant", { fg = colors.purple, bold = true })

    set(0, "String", { fg = colors.green })
    set(0, "Character", { fg = colors.green })
    set(0, "SpecialChar", { fg = colors.blue })
    set(0, "Number", { fg = colors.red })
    set(0, "Float", { fg = colors.red })
    set(0, "Boolean", { fg = colors.red })

    set(0, "Type", { fg = colors.yellow })
    set(0, "Identifier", { fg = colors.cyan })
    set(0, "Function", { fg = colors.blue })

    set(0, "Keyword", { fg = colors.red })
    set(0, "Statement", { fg = colors.red })
    set(0, "Repeat", { fg = colors.red })
    set(0, "Label", { fg = colors.red })

    set(0, "PreProc", { fg = colors.purple })
    set(0, "Macros", { fg = colors.purple })
    set(0, "Define", { fg = colors.purple })

    set(0, "Special", { fg = colors.purple })
    set(0, "Error", { fg = colors.red, bold = true })

    set(0, "RenderMarkdownCode", { bg = "#eeeeee" })  
    set(0, "RenderMarkdownCodeBorder", { bg = "#dddddd" }) 
  end
end

return M
