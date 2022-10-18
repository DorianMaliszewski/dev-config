local lspkind = require("user.lsp_kind")

vim.g.coq_settings = {
	auto_start = "shut-up",

	display = {
		icons = {
			mappings = lspkind.icons,
			mode = "short",
		},
		pum = {
			kind_context = { "", "" },
			source_context = { "", "" },
		},
		ghost_text = {
			context = { "", "" },
		},
	},
}

vim.cmd("COQnow")
