require("lazy").setup({
  "nvim-lua/plenary.nvim", -- Useful lua functions used by lots of plugins
  "windwp/nvim-autopairs", -- Autopairs, integrates with both cmp and treesitter
  "numToStr/Comment.nvim",
  "JoosepAlviste/nvim-ts-context-commentstring",
  'lewis6991/impatient.nvim',

  -- Icons
  "nvim-tree/nvim-web-devicons",
  "nvim-tree/nvim-tree.lua",

  { "akinsho/bufferline.nvim", version = "v3.*" },
  "moll/vim-bbye",
  "nvim-lualine/lualine.nvim",
  "ahmedkhalf/project.nvim",
  "lukas-reineke/indent-blankline.nvim",
  "folke/lsp-colors.nvim",

  -- Themes
  "folke/tokyonight.nvim",


  -- Nvim cmp
  'neovim/nvim-lspconfig',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',
  'hrsh7th/nvim-cmp',

  -- Lsp Kind
  "onsails/lspkind.nvim",

  -- Snippets
  "L3MON4D3/LuaSnip",
  "rafamadriz/friendly-snippets",


  -- Finding
  "ibhagwan/fzf-lua",
  { "junegunn/fzf",            build = "./install --bin" },

  -- Treesitter
  "nvim-treesitter/nvim-treesitter",

  -- Git
  "lewis6991/gitsigns.nvim",

  -- Auto tag close
  "windwp/nvim-ts-autotag",

  -- Block/line moves up/down
  "fedepujol/move.nvim",

  -- Trouble
  "folke/trouble.nvim",

  -- Spectre
  "windwp/nvim-spectre",

  -- UI Improvement
  {
    "folke/noice.nvim",
    dependencies = {
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      "rcarriga/nvim-notify",
    },
  },

  -- Mason
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",

	-- LSP
	"neovim/nvim-lspconfig",
	"jose-elias-alvarez/null-ls.nvim",

})
