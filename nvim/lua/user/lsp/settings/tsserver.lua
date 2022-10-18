return {
	init_options = {
		hostInfo = "neovim",
		maxTsServerMemory = 8096,
		tsserver = {
			logVerbosity = "verbose",
			trace = "verbose",
			logDirectory = "/tmp/tslog.manual.log",
		},
		preferences = {
			allowIncompleteCompletions = true,
		},
	},
}
