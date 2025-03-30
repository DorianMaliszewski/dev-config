require("lazy").setup({
  require('user.treesitter'),
  require('user.impatient'),
  "nvim-lua/plenary.nvim",
  "moll/vim-bbye",
  "nvim-tree/nvim-web-devicons",
  "folke/lsp-colors.nvim",
  require('user.lualine'),
  require('user.theme'),
  "onsails/lspkind.nvim",
  require('user.trouble'),
  require('user.markdown'),
  require('user.lspzero'),
  require('user.linter'),
  require('user.formatter'),
  require('user.snacks'),
  require('user.whichkey'),
  require('user.move'),
  {
    'MagicDuck/grug-far.nvim',
    config = function()
      require('grug-far').setup({
        -- options, see Configuration section below
        -- there are no required options atm
        -- engine = 'ripgrep' is default, but 'astgrep' can be specified
      });
    end
  },
  -- Auto editing
  {
    "numToStr/Comment.nvim",
    dependencies = 'JoosepAlviste/nvim-ts-context-commentstring',
    init = function()
      require('Comment').setup({
        pre_hook = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook(),
      })
    end
  },
  require('user.indentline'),
  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    init = function()
      require("nvim-surround").setup({
      })
    end
  },

})
