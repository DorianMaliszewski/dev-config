require("nvim-tree").setup({
  sort_by = "case_sensitive",
  sync_root_with_cwd = true,
  hijack_cursor = true,
  hijack_unnamed_buffer_when_opening = false,
   disable_netrw = true,
   hijack_netrw = true,
   open_on_setup = true,
   update_cwd = true,
  view = {
    adaptive_size = false,
    side = "left",
  },
  filesystem_watchers = {
      enable = true,
   },
  diagnostics = {
	  enable = true,
	  debounce_delay = 1000,
	  show_on_dirs = true
  },
  renderer = {
	  indent_markers = {
		  enable = true,
	  }
  },
  filters = {
    dotfiles = false,
  },
  update_focused_file = {
	  enable = true,
    update_cwd = false,
  }
})
