require("lazy").setup({
	"nvim-lua/plenary.nvim",
	"JoosepAlviste/nvim-ts-context-commentstring",
	"lewis6991/impatient.nvim",

  -- Auto editing
	{"numToStr/Comment.nvim", lazy = false},
	{"windwp/nvim-autopairs", event = "InsertEnter"},
	{"lukas-reineke/indent-blankline.nvim", main = "ibl"},
  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup({
        })
    end
  },
	"windwp/nvim-ts-autotag",
	"fedepujol/move.nvim",

  -- Test dressing
  "stevearc/dressing.nvim",

	-- Icons
	"nvim-tree/nvim-web-devicons",
	"nvim-tree/nvim-tree.lua",

  -- Tab
  {'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'},


	"moll/vim-bbye",
	"nvim-lualine/lualine.nvim",
	"ahmedkhalf/project.nvim",
	"folke/lsp-colors.nvim",

	-- Themes
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

	-- Nvim cmp
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	"hrsh7th/cmp-cmdline",
	"hrsh7th/nvim-cmp",

  -- Format
  {'stevearc/conform.nvim', event = { "BufWritePre" }},


	-- Lsp Kind
	"onsails/lspkind.nvim",

	-- Snippets
  {
    "L3MON4D3/LuaSnip",
    version = "v2.*",
    dependencies = { "rafamadriz/friendly-snippets" },
    build = "make install_jsregexp"
  },

	-- Finding
  { "junegunn/fzf", build = "./install --bin" },
  {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("fzf-lua").setup({})
    end
  },
	-- Treesitter
	{"nvim-treesitter/nvim-treesitter", build=":TSUpdate"},

	-- Git
	"lewis6991/gitsigns.nvim",
  "sindrets/diffview.nvim",

	-- Trouble
	"folke/trouble.nvim",

	-- Spectre
	"windwp/nvim-spectre",

	-- UI Improvement
	{
		"folke/noice.nvim",
    event = "VeryLazy",
		dependencies = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		},
	},

	-- LSP
	{ "neovim/nvim-lspconfig", event = { "BufReadPre", "BufNewFile" } },

})
