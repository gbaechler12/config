vim.opt.number = true
vim.opt.relativenumber = true

-- vim.opt.numberwidth = 3
vim.opt.signcolumn = 'yes'
vim.opt.cursorline = false
vim.opt.colorcolumn = '80'

vim.opt.mouse = 'a' -- Enable mouse mode, can be useful for resizing splits for example!

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

-- use spaces for tabs and whatnot
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true -- round indent to sw compatible
vim.opt.expandtab = true

vim.opt.termguicolors = true

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "c", "cpp", "objc", "objcpp" },
  callback = function()
    vim.bo.expandtab = true
    vim.bo.shiftwidth = 4
    vim.bo.tabstop = 4
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "make" },
  callback = function()
    vim.bo.expandtab = false
    vim.bo.shiftwidth = 4
    vim.bo.tabstop = 4
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "*",
  callback = function()
    -- fallback par défaut : 2 espaces
    if vim.bo.filetype ~= "c" and vim.bo.filetype ~= "cpp" and vim.bo.filetype ~= "make" then
      vim.bo.expandtab = true
      vim.bo.shiftwidth = 2
      vim.bo.tabstop = 2
    end
  end,
})
