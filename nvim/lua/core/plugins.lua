local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  -- My plugins here
  -- use 'foo1/bar1.nvim'
  -- use 'foo2/bar2.nvim'
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
  -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  
  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'})

  use {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
      require("ibl").setup()
    end
  }

  use "hrsh7th/nvim-cmp"    
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-buffer"  
  use "hrsh7th/cmp-path"    
  use "hrsh7th/cmp-cmdline" 

  use {
    "nvim-tree/nvim-tree.lua",
    requires = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("nvim-tree").setup({
        git = {
          enable = true,
          ignore = false,
        },
        view = {
          width = 30,
          side = "left",
        },
        renderer = {
          highlight_git = true,
          icons = {
            show = {
              git = true,
            },
            glyphs = {
              git = {
                unstaged = "●",
                staged = "✓",
                unmerged = "",
                renamed = "➜",
                untracked = "★",
                deleted = "",
                ignored = "◌"
              }
            },
          },
        },
      })
    end
  }

  use {
    "mfussenegger/nvim-lint",
    config = function()
      local lint = require("lint")

      -- Custom shellcheck with filtering and custom format
      lint.linters.shellcheck = {
        cmd = "shellcheck",
        stdin = false,
        args = {
          "--format", "json1"
        },
        parser = function(output, bufnr)
          local results = {}
          local ok, decoded = pcall(vim.fn.json_decode, output)
          if not ok or not decoded or not decoded.comments then return results end

          for _, comment in ipairs(decoded.comments) do
            -- Skip *_spec.sh
            local filename = vim.api.nvim_buf_get_name(bufnr)
            if filename:match("_spec%.sh$") then return {} end

            table.insert(results, {
              bufnr = bufnr,
              lnum = comment.line - 1,
              col = comment.column or 1,
              end_col = comment.endColumn or comment.column or 1,
              severity = ({
                error = vim.diagnostic.severity.ERROR,
                warning = vim.diagnostic.severity.WARN,
                info = vim.diagnostic.severity.INFO,
                style = vim.diagnostic.severity.HINT,
              })[comment.level],
              source = "shellcheck",
              message = string.format("[SC%s]: %s\n (https://github.com/koalaman/shellcheck/wiki/SC%s)", comment.code, comment.message, comment.code),
            })
          end

          return results
        end,
      }

      -- Register shellcheck for *.sh
      lint.linters_by_ft = {
        sh = { "shellcheck" },
      }

      -- Trigger linting on save
      vim.api.nvim_create_autocmd({ "BufWritePost" }, {
        callback = function()
          require("lint").try_lint()
        end,
      })
    end
  }

  use "neovim/nvim-lspconfig"
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
