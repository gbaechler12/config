vim.diagnostic.config({
  virtual_text = {
    prefix = "●",
    spacing = 2,
    source = true,
    format = function(diagnostic)
      return diagnostic.message
    end,
  },
  severity_sort = true,
  update_in_insert = false,
})
