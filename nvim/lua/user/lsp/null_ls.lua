local null_ls = require('null-ls')

local M = {}

M.setup = function()
  null_ls.setup({
    sources = {
      null_ls.builtins.formatting.prettier_d,
      null_ls.builtins.formatting.eslint_d,
    }
  })
  -- See mason-null-ls.nvim's documentation for more details:
  -- https://github.com/jay-babu/mason-null-ls.nvim#setup
  require('mason-null-ls').setup({
    ensure_installed = nil,
    automatic_installation = false, -- You can still set this to `true`
    automatic_setup = true,
  })

  -- Required when `automatic_setup` is true
  require('mason-null-ls').setup_handlers()
end

return M
