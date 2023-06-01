local root_pattern = require”lspconfig/util”.root_pattern

return {
	init_options = {
		hostInfo = "neovim",
		maxTsServerMemory = 4096,
	},
	cmd = {
		"typescript-language-server",
		"--stdio",
		"--tsserver-path",
    "~/.local/share/pnpm/global/5/node_modules/typescript/lib/tsserver.js"
	},
	preferences = {
		importModuleSpecifierPreference = "non-relative",
	},
  root_dir = root_pattern('.git')
}
