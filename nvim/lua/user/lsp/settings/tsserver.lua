return {
	init_options = {
		hostInfo = "neovim",
		maxTsServerMemory = 4096,
	},
	cmd = {
		"typescript-language-server",
		"--stdio",
		"--tsserver-path",
		"/Users/dmaliszewski/Library/pnpm/global/5/node_modules/typescript/lib/tsserver.js",
	},
	preferences = {
		importModuleSpecifierPreference = "non-relative",
	},
}
