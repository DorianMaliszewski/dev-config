local lsp_zero = require("lsp-zero")

vim.opt.updatetime = 750

local lsp_attach = function(client, bufnr)
  vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")
	local opts = { noremap = true, silent = true }
	local keymap = vim.api.nvim_buf_set_keymap
	keymap(bufnr, "n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
	keymap(bufnr, "n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
	keymap(bufnr, "n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
	keymap(bufnr, "n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
	keymap(bufnr, "n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
	keymap(bufnr, "n", "go", "<cmd>lua vim.lsp.buf.type_definition()<CR>", opts)
	keymap(bufnr, "n", "gs", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
	keymap(bufnr, "n", "<leader>cd", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
	-- We also have leader cf that use conform.nvim (formatter.lua)
	keymap(bufnr, "n", "<leader>bf", "<cmd>lua vim.lsp.buf.format({ async = true })<cr>", opts)
	keymap(bufnr, "n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<cr>", opts)
	keymap(bufnr, "n", "<leader>dn", "<cmd>lua vim.diagnostic.goto_next({buffer=0})<cr>", opts)
	keymap(bufnr, "n", "<leader>dp", "<cmd>lua vim.diagnostic.goto_prev({buffer=0})<cr>", opts)
	keymap(bufnr, "n", "<leader>lr", "<cmd>lua vim.lsp.buf.rename()<cr>", opts)
	keymap(bufnr, "n", "<leader>li", "<cmd>LspInfo<cr>", opts)
	keymap(bufnr, "n", "<leader>lI", "<cmd>LspInstallInfo<cr>", opts)

  client.config.flags = {allow_incremental_sync = true, debounce_text_changes = 200}
end

lsp_zero.extend_lspconfig({
	sign_text = true,
	lsp_attach = lsp_attach,
	capabilities = require("cmp_nvim_lsp").default_capabilities(),
	float_border = "rounded",
})

require("mason").setup({})
require("mason-lspconfig").setup({
	ensure_installed = { "lua_ls", "eslint", "tsserver", "biome" },
	handlers = {
		function(server_name)
        require('lspconfig')[server_name].setup({})
		end,
	},
})
