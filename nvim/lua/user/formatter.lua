-- Utilities for creating configurations
local util = require "formatter.util"

local eslintd_prettierd = {
        require("formatter.defaults").eslint_d,
        require("formatter.defaults").prettierd,
      }

-- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
require("formatter").setup {
  logging = true,
  log_level = vim.log.levels.WARN,
  filetype = {
    css = { require("formatter.defaults").prettierd },
          html = { require("formatter.defaults").prettierd },
          json = { require("formatter.defaults").prettierd },
          yaml = { require("formatter.defaults").prettierd },
          javascript = eslintd_prettierd,
          javascriptreact = eslintd_prettierd,
          typescript = eslintd_prettierd,
          typescriptreact =eslintd_prettierd,
          go = require('formatter.filetypes.go'),
          rust = require('formatter.filetypes.rust'),
    lua = {
      require("formatter.filetypes.lua").stylua,
    },
    ["*"] = {
      require("formatter.filetypes.any").remove_trailing_whitespace
    }
  }
}
