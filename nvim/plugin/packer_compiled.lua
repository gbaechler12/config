-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/guilhem/.cache/nvim/packer_hererocks/2.1.1741730670/share/lua/5.1/?.lua;/home/guilhem/.cache/nvim/packer_hererocks/2.1.1741730670/share/lua/5.1/?/init.lua;/home/guilhem/.cache/nvim/packer_hererocks/2.1.1741730670/lib/luarocks/rocks-5.1/?.lua;/home/guilhem/.cache/nvim/packer_hererocks/2.1.1741730670/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/guilhem/.cache/nvim/packer_hererocks/2.1.1741730670/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/guilhem/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/home/guilhem/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/guilhem/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/guilhem/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\n1\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\bibl\frequire\0" },
    loaded = true,
    path = "/home/guilhem/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/guilhem/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lint"] = {
    config = { "\27LJ\2\n˚\5\0\2\21\0%\1Y4\2\0\0006\3\0\0006\5\1\0009\5\2\0059\5\3\5\18\6\0\0B\3\3\3\15\0\3\0X\5\5Ä\15\0\4\0X\5\3Ä9\5\4\4\14\0\5\0X\5\1ÄL\2\2\0006\5\5\0009\a\4\4B\5\2\4X\bCÄ6\n\1\0009\n\6\n9\n\a\n\18\f\1\0B\n\2\2\18\r\n\0009\v\b\n'\14\t\0B\v\3\2\15\0\v\0X\f\2Ä4\v\0\0L\v\2\0006\v\n\0009\v\v\v\18\r\2\0005\14\f\0=\1\r\0149\15\14\t\23\15\0\15=\15\15\0149\15\16\t\14\0\15\0X\16\1Ä)\15\1\0=\15\17\0149\15\18\t\14\0\15\0X\16\4Ä9\15\16\t\14\0\15\0X\16\1Ä)\15\1\0=\15\19\0145\15\23\0006\16\1\0009\16\20\0169\16\21\0169\16\22\16=\16\24\0156\16\1\0009\16\20\0169\16\21\0169\16\25\16=\16\26\0156\16\1\0009\16\20\0169\16\21\0169\16\27\16=\16\28\0156\16\1\0009\16\20\0169\16\21\0169\16\29\16=\16\30\0159\16\31\t8\15\16\15=\15\21\0146\15 \0009\15!\15'\17\"\0009\18#\t9\19$\t9\20#\tB\15\5\2=\15$\14B\v\3\1E\b\3\3R\bª\127L\2\2\0\fmessage\tcodeC[SC%s]: %s\n (https://github.com/koalaman/shellcheck/wiki/SC%s)\vformat\vstring\nlevel\nstyle\tHINT\tinfo\tINFO\fwarning\tWARN\nerror\1\0\4\nerror\0\nstyle\0\fwarning\0\tinfo\0\nERROR\rseverity\15diagnostic\fend_col\14endColumn\bcol\vcolumn\tlnum\tline\nbufnr\1\0\a\tlnum\0\vsource\15shellcheck\fmessage\0\rseverity\0\nbufnr\0\fend_col\0\bcol\0\vinsert\ntable\15_spec%.sh$\nmatch\22nvim_buf_get_name\bapi\vipairs\rcomments\16json_decode\afn\bvim\npcall\2€\2\0\0\t\0\18\0\0256\0\0\0'\2\1\0B\0\2\0029\1\2\0009\1\3\0015\3\5\0005\4\4\0=\4\6\0035\4\a\0=\4\b\0039\4\t\0009\4\n\4'\6\v\0'\a\f\0'\b\r\0B\4\4\2=\4\14\0036\4\0\0'\6\15\0B\4\2\0029\4\16\4B\4\1\2=\4\17\3B\1\2\1K\0\1\0\17capabilities\25default_capabilities\17cmp_nvim_lsp\rroot_dir\t.git\22compile_flags.txt\26compile_commands.json\17root_pattern\tutil\14filetypes\1\5\0\0\6c\bcpp\tobjc\vobjcpp\bcmd\1\0\4\17capabilities\0\bcmd\0\14filetypes\0\rroot_dir\0\1\2\0\0\vclangd\nsetup\vclangd\14lspconfig\frequire5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\rtry_lint\tlint\frequireı\2\1\0\6\1\23\0\0286\0\0\0'\2\1\0B\0\2\0029\1\2\0005\2\4\0005\3\5\0=\3\6\0023\3\a\0=\3\b\2=\2\3\1-\1\0\0005\3\t\0003\4\n\0=\4\v\3B\1\2\0015\1\14\0005\2\r\0=\2\15\1=\1\f\0006\1\16\0009\1\17\0019\1\18\0015\3\19\0005\4\21\0003\5\20\0=\5\22\4B\1\3\1K\0\1\0\0¿\rcallback\1\0\1\rcallback\0\0\1\2\0\0\17BufWritePost\24nvim_create_autocmd\bapi\bvim\ash\1\0\1\ash\0\1\2\0\0\15shellcheck\18linters_by_ft\vconfig\0\1\2\1\0\26neovim/nvim-lspconfig\vconfig\0\vparser\0\targs\1\3\0\0\r--format\njson1\1\0\4\targs\0\bcmd\15shellcheck\vparser\0\nstdin\1\15shellcheck\flinters\tlint\frequire\0" },
    loaded = true,
    path = "/home/guilhem/.local/share/nvim/site/pack/packer/start/nvim-lint",
    url = "https://github.com/mfussenegger/nvim-lint"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\nÎ\2\0\0\a\0\17\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0005\4\n\0005\5\t\0=\5\v\0045\5\r\0005\6\f\0=\6\5\5=\5\14\4=\4\15\3=\3\16\2B\0\2\1K\0\1\0\rrenderer\nicons\vglyphs\1\0\1\bgit\0\1\0\a\14untracked\b‚òÖ\runmerged\bÓúß\fdeleted\bÔëò\vstaged\b‚úì\fignored\b‚óå\runstaged\b‚óè\frenamed\b‚ûú\tshow\1\0\2\vglyphs\0\tshow\0\1\0\1\bgit\2\1\0\2\nicons\0\18highlight_git\2\tview\1\0\2\nwidth\3\30\tside\tleft\bgit\1\0\3\tview\0\rrenderer\0\bgit\0\1\0\2\vignore\1\venable\2\nsetup\14nvim-tree\frequire\0" },
    loaded = true,
    path = "/home/guilhem/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/guilhem/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/guilhem/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/guilhem/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/guilhem/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/guilhem/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\n1\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\bibl\frequire\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\nÎ\2\0\0\a\0\17\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0005\4\n\0005\5\t\0=\5\v\0045\5\r\0005\6\f\0=\6\5\5=\5\14\4=\4\15\3=\3\16\2B\0\2\1K\0\1\0\rrenderer\nicons\vglyphs\1\0\1\bgit\0\1\0\a\14untracked\b‚òÖ\runmerged\bÓúß\fdeleted\bÔëò\vstaged\b‚úì\fignored\b‚óå\runstaged\b‚óè\frenamed\b‚ûú\tshow\1\0\2\vglyphs\0\tshow\0\1\0\1\bgit\2\1\0\2\nicons\0\18highlight_git\2\tview\1\0\2\nwidth\3\30\tside\tleft\bgit\1\0\3\tview\0\rrenderer\0\bgit\0\1\0\2\vignore\1\venable\2\nsetup\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: nvim-lint
time([[Config for nvim-lint]], true)
try_loadstring("\27LJ\2\n˚\5\0\2\21\0%\1Y4\2\0\0006\3\0\0006\5\1\0009\5\2\0059\5\3\5\18\6\0\0B\3\3\3\15\0\3\0X\5\5Ä\15\0\4\0X\5\3Ä9\5\4\4\14\0\5\0X\5\1ÄL\2\2\0006\5\5\0009\a\4\4B\5\2\4X\bCÄ6\n\1\0009\n\6\n9\n\a\n\18\f\1\0B\n\2\2\18\r\n\0009\v\b\n'\14\t\0B\v\3\2\15\0\v\0X\f\2Ä4\v\0\0L\v\2\0006\v\n\0009\v\v\v\18\r\2\0005\14\f\0=\1\r\0149\15\14\t\23\15\0\15=\15\15\0149\15\16\t\14\0\15\0X\16\1Ä)\15\1\0=\15\17\0149\15\18\t\14\0\15\0X\16\4Ä9\15\16\t\14\0\15\0X\16\1Ä)\15\1\0=\15\19\0145\15\23\0006\16\1\0009\16\20\0169\16\21\0169\16\22\16=\16\24\0156\16\1\0009\16\20\0169\16\21\0169\16\25\16=\16\26\0156\16\1\0009\16\20\0169\16\21\0169\16\27\16=\16\28\0156\16\1\0009\16\20\0169\16\21\0169\16\29\16=\16\30\0159\16\31\t8\15\16\15=\15\21\0146\15 \0009\15!\15'\17\"\0009\18#\t9\19$\t9\20#\tB\15\5\2=\15$\14B\v\3\1E\b\3\3R\bª\127L\2\2\0\fmessage\tcodeC[SC%s]: %s\n (https://github.com/koalaman/shellcheck/wiki/SC%s)\vformat\vstring\nlevel\nstyle\tHINT\tinfo\tINFO\fwarning\tWARN\nerror\1\0\4\nerror\0\nstyle\0\fwarning\0\tinfo\0\nERROR\rseverity\15diagnostic\fend_col\14endColumn\bcol\vcolumn\tlnum\tline\nbufnr\1\0\a\tlnum\0\vsource\15shellcheck\fmessage\0\rseverity\0\nbufnr\0\fend_col\0\bcol\0\vinsert\ntable\15_spec%.sh$\nmatch\22nvim_buf_get_name\bapi\vipairs\rcomments\16json_decode\afn\bvim\npcall\2€\2\0\0\t\0\18\0\0256\0\0\0'\2\1\0B\0\2\0029\1\2\0009\1\3\0015\3\5\0005\4\4\0=\4\6\0035\4\a\0=\4\b\0039\4\t\0009\4\n\4'\6\v\0'\a\f\0'\b\r\0B\4\4\2=\4\14\0036\4\0\0'\6\15\0B\4\2\0029\4\16\4B\4\1\2=\4\17\3B\1\2\1K\0\1\0\17capabilities\25default_capabilities\17cmp_nvim_lsp\rroot_dir\t.git\22compile_flags.txt\26compile_commands.json\17root_pattern\tutil\14filetypes\1\5\0\0\6c\bcpp\tobjc\vobjcpp\bcmd\1\0\4\17capabilities\0\bcmd\0\14filetypes\0\rroot_dir\0\1\2\0\0\vclangd\nsetup\vclangd\14lspconfig\frequire5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\rtry_lint\tlint\frequireı\2\1\0\6\1\23\0\0286\0\0\0'\2\1\0B\0\2\0029\1\2\0005\2\4\0005\3\5\0=\3\6\0023\3\a\0=\3\b\2=\2\3\1-\1\0\0005\3\t\0003\4\n\0=\4\v\3B\1\2\0015\1\14\0005\2\r\0=\2\15\1=\1\f\0006\1\16\0009\1\17\0019\1\18\0015\3\19\0005\4\21\0003\5\20\0=\5\22\4B\1\3\1K\0\1\0\0¿\rcallback\1\0\1\rcallback\0\0\1\2\0\0\17BufWritePost\24nvim_create_autocmd\bapi\bvim\ash\1\0\1\ash\0\1\2\0\0\15shellcheck\18linters_by_ft\vconfig\0\1\2\1\0\26neovim/nvim-lspconfig\vconfig\0\vparser\0\targs\1\3\0\0\r--format\njson1\1\0\4\targs\0\bcmd\15shellcheck\vparser\0\nstdin\1\15shellcheck\flinters\tlint\frequire\0", "config", "nvim-lint")
time([[Config for nvim-lint]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
