local M = {}

M.setup_client = function(client)
  local client_config_ok, client_config = pcall(require, "user.lsp.settings." .. client)
  if client_config_ok then
    require('lspconfig')[client].setup(client_config)
  end
end

return M
