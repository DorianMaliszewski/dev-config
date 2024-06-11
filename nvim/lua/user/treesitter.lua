local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end

configs.setup({
  ensure_installed = {'tsx', 'typescript', 'html', 'go', 'rust', 'css', 'lua'},
	auto_install = true,
	highlight = {
		enable = true, -- false will disable the whole extension
	},
	autopairs = {
		enable = true,
	},
	autotag = {
		enabled = true,
	},
})
