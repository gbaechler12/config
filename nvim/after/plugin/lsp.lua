local ok, lspconfig = pcall(require, "lspconfig")
if not ok then
  vim.notify("lspconfig not loaded", vim.log.levels.WARN)
  return
end

lspconfig.clangd.setup({
  cmd = { "clangd" }, 
  filetypes = { "c", "cpp", "objc", "objcpp" },
  root_dir = lspconfig.util.root_pattern("compile_commands.json", "compile_flags.txt", ".git"),
  capabilities = require("cmp_nvim_lsp").default_capabilities(), 
})

