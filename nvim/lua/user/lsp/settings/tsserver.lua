return {
	init_options = {
		hostInfo = "neovim",
		maxTsServerMemory = 6144,
		disableAutomaticTypingAcquisition = false,
		tsserver = {
			logVerbosity = "verbose",
			logDirectory = "/Users/dmaliszewski/typescript.log",
			trace = "verbose",
		},
	},
	cmd = { "typescript-language-server", "--stdio" },
}
