return {
	init_options = {
		hostInfo = "neovim",
		maxTsServerMemory = 4096,
	},
	cmd = {
		"typescript-language-server",
		"--stdio",
		--[[ "--tsserver-path", ]]
		--[[ "/Applications/Visual Studio Code.app/Contents/Resources/app/extensions/node_modules/typescript/lib/tsserver.js", ]]
	},
}
