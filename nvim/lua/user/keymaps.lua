-- Shorten function name
local keymap = vim.keymap.set
-- Silent keymap option
local opts = { silent = true }

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
--[[ keymap("n", "<C-Up>", ":resize -2<CR>", opts) ]]
--[[ keymap("n", "<C-Down>", ":resize +2<CR>", opts) ]]
--[[ keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts) ]]
--[[ keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts) ]]

-- Navigate buffers
keymap("n", "<Tab>", ":bnext<CR>", opts)
keymap("n", "<S-Tab>", ":bprevious<CR>", opts)

-- Clear highlights
keymap("n", "<leader>h", "<cmd>nohlsearch<CR>", opts)

-- Close buffers
keymap("n", "<C-w>", "<cmd>Bdelete<CR>", opts)
keymap("n", "<C-s>", "<cmd>w<CR>", opts)

-- Better paste
keymap("v", "p", '"_dP', opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- DAP
--[[ keymap("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", opts) ]]
--[[ keymap("n", "<leader>dc", "<cmd>lua require'dap'.continue()<cr>", opts) ]]
--[[ keymap("n", "<leader>di", "<cmd>lua require'dap'.step_into()<cr>", opts) ]]
--[[ keymap("n", "<leader>do", "<cmd>lua require'dap'.step_over()<cr>", opts) ]]
--[[ keymap("n", "<leader>dO", "<cmd>lua require'dap'.step_out()<cr>", opts) ]]
--[[ keymap("n", "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>", opts) ]]
--[[ keymap("n", "<leader>dl", "<cmd>lua require'dap'.run_last()<cr>", opts) ]]
--[[ keymap("n", "<leader>du", "<cmd>lua require'dapui'.toggle()<cr>", opts) ]]
--[[ keymap("n", "<leader>dt", "<cmd>lua require'dap'.terminate()<cr>", opts) ]]

-- Block/Line moves
keymap("n", "<C-Down>", ":MoveLine(1)<CR>", opts)
keymap("n", "<C-Up>", ":MoveLine(-1)<CR>", opts)
keymap("v", "<C-Down>", ":MoveBlock(1)<CR>", opts)
keymap("v", "<C-Up>", ":MoveBlock(-1)<CR>", opts)
