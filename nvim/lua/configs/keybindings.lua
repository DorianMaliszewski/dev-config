
local options = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

keymap("", "<Space>", "<Nop>", options)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Functional wrapper for mapping custom keybindings
local map = function (mode, lhs, rhs, opts)
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map("n", "<leader>ff", ":Telescope find_files<CR>")
map("n", "<leader>fg", ":Telescope live_grep<CR>")
map("n", "<leader>fb", ":Telescope buffers<CR>")
map("n", "<leader>fh", ":Telescope help_tags<CR>")
map("n", "<leader>nn", ":NvimTreeToggle<CR>")
map("n", "<leader>ne", ":NvimTreeFocus<CR>")
map("n", "<leader>nf", ":NvimTreeFindFile<CR>")
map("n", "<leader>nc", ":NvimTreeCollapse<CR>")
map("n", "<Tab>", ":BufferLineCycleNext<CR>")
map("n", "<S-Tab>", ":BufferLineCyclePrev<CR>")
map("n", "<C-w>", ":bn<CR>:bd#<CR>")
map("n", "<leader>fp", ":SearchSession<CR>")
map("n", "d", '"_d')
map("v", "d", '"_d')
map('n', '<A-Down>', ":MoveLine(1)<CR>")
map('n', '<A-Up>', ":MoveLine(-1)<CR>")
map('v', '<A-Down>', ":MoveBlock(1)<CR>")
map('v', '<A-Up>', ":MoveBlock(-1)<CR>")
-- map('n', '<C-t>', ':ToggleTerm')
--map('n', '<A-Right>', ":MoveHChar(1)<CR>")
--map('n', '<A-Left>', ":MoveHChar(-1)<CR>")
--map('v', '<A-Right>', ":MoveHBlock(1)<CR>")
--map('v', '<A-Left>', ":MoveHBlock(-1)<CR>")
-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float)
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist)

