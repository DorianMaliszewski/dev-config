local lsp_settings = require('user.lsp.settings')
local user_null_ls = require('user.lsp.null_ls')
local user_lsp_zero = require('user.lsp.lsp_zero')




user_lsp_zero.setup(function()
  lsp_settings.setup_client("tsserver")
  lsp_settings.setup_client("lua_ls")
end)


user_null_ls.setup()
