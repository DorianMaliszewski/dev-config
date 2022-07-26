local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
  return
end

telescope.setup({
  defaults = {

    prompt_prefix = " ",
    selection_caret = " ",
    path_display = { "smart" },
    file_ignore_patterns = { ".git/", "node_modules" },

    mappings = {
      i = {
        --[[ ["<Down>"] = actions.cycle_history_next, ]]
        --[[ ["<Up>"] = actions.cycle_history_prev, ]]
        --[[ ["<C-j>"] = actions.move_selection_next, ]]
        --[[ ["<C-k>"] = actions.move_selection_previous, ]]
      },
    },
  },
  pickers = {
    find_files = {
      find_command = { "rg", "--files", "--hidden", "--glob", "!.git/*" },
    },
  },
  extensions = {
    fzf = {
      fuzzy = true, -- false will only do exact matching
      override_generic_sorter = true, -- override the generic sorter
      override_file_sorter = true, -- override the file sorter
      case_mode = "smart_case", -- or "ignore_case" or "respect_case"
    },
  },
})

telescope.load_extension("fzf")
