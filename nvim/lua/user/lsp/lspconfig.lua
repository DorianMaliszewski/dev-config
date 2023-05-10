local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")

if not lspconfig_status_ok then
	return
end

local config = {
	update_in_insert = true,
	underline = true,
	severity_sort = true,
	float = {
		focusable = true,
		style = "minimal",
		border = "rounded",
		source = "always",
		header = "",
		prefix = "",
	},
}

vim.diagnostic.config(config)

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
	border = "rounded",
})

vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
	border = "rounded",
})

local servers = {
	"lua_ls",
	"cssls",
	"html",
	"eslint",
	"tsserver",
	"pyright",
	"bashls",
	"jsonls",
	"yamlls",
	"gopls",
	"golangci_lint_ls",
	"html",
	"rust_analyzer",
}

local opts = {}

for _, server in pairs(servers) do
	opts = {
		on_attach = require("user.lsp.handlers").on_attach,
		capabilities = require("user.lsp.handlers").capabilities,
	}

	server = vim.split(server, "@")[1]

	local require_ok, conf_opts = pcall(require, "user.lsp.settings." .. server)
	if require_ok then
		opts = vim.tbl_deep_extend("force", conf_opts, opts)
	end

	lspconfig[server].setup(opts)
end
