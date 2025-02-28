---@diagnostic disable: different-requires



vim.opt.updatetime = 750

return {
  "VonHeikemen/lsp-zero.nvim",
  branch = "v4.x",
  dependencies = {
    -- LSP Support
    { "neovim/nvim-lspconfig" }, -- Required
    {                            -- Optional
      "williamboman/mason.nvim",
      build = function()
        pcall(vim.cmd, "MasonUpdate")
      end,
    },
    { "williamboman/mason-lspconfig.nvim" },

    -- Autocompletion
    { "hrsh7th/nvim-cmp" },     -- Required
    { "hrsh7th/cmp-nvim-lsp" }, -- Required
    { "L3MON4D3/LuaSnip" },     -- Required
    { "rafamadriz/friendly-snippets" },
    { "hrsh7th/cmp-buffer" },
    { "hrsh7th/cmp-path" },
    { "hrsh7th/cmp-cmdline" },
    { "saadparwaiz1/cmp_luasnip" },
    {
      "windwp/nvim-autopairs",
    },
    {
      "windwp/nvim-ts-autotag",
      dependencies = "nvim-treesitter/nvim-treesitter",
    },

  },
  init = function()
    local lsp_zero = require("lsp-zero")

    local lsp_attach = function(client, bufnr)
      vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")
      local opts = { noremap = true, silent = true }
      local keymap = vim.api.nvim_buf_set_keymap
      keymap(bufnr, "n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
      keymap(bufnr, "n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
      keymap(bufnr, "n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
      keymap(bufnr, "n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
      keymap(bufnr, "n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
      keymap(bufnr, "n", "go", "<cmd>lua vim.lsp.buf.type_definition()<CR>", opts)
      keymap(bufnr, "n", "gs", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
      keymap(bufnr, "n", "<leader>cd", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
      -- We also have leader cf that use formatter plugin
      keymap(bufnr, "n", "<leader>bf", "<cmd>lua vim.lsp.buf.format({ async = true })<cr>", opts)
      keymap(bufnr, "n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<cr>", opts)
      keymap(bufnr, "n", "<leader>dn", "<cmd>lua vim.diagnostic.goto_next({buffer=0})<cr>", opts)
      keymap(bufnr, "n", "<leader>dp", "<cmd>lua vim.diagnostic.goto_prev({buffer=0})<cr>", opts)
      keymap(bufnr, "n", "<leader>lr", "<cmd>lua vim.lsp.buf.rename()<cr>", opts)
      keymap(bufnr, "n", "<leader>li", "<cmd>LspInfo<cr>", opts)
      keymap(bufnr, "n", "<leader>lI", "<cmd>LspInstallInfo<cr>", opts)

      client.config.flags = { allow_incremental_sync = true, debounce_text_changes = 200 }
    end
    lsp_zero.extend_lspconfig({
      sign_text = true,
      lsp_attach = lsp_attach,
      capabilities = require("cmp_nvim_lsp").default_capabilities(),
      float_border = "rounded",
    })


    require("mason").setup({})
    require("mason-lspconfig").setup({
      handlers = {
        function(server_name)
          require('lspconfig')[server_name].setup({})
        end,
      },
    })

    local cmp_action = require("lsp-zero").cmp_action()
    local cmp = require("cmp")
    local cmp_select = { behavior = cmp.SelectBehavior.Select }

    require("luasnip.loaders.from_vscode").lazy_load()

    -- `/` cmdline setup.
    cmp.setup.cmdline("/", {
      mapping = cmp.mapping.preset.cmdline(),
      sources = {
        { name = "buffer" },
      },
    })

    -- `:` cmdline setup.
    cmp.setup.cmdline(":", {
      mapping = cmp.mapping.preset.cmdline(),
      sources = cmp.config.sources({
        { name = "path" },
      }, {
        {
          name = "cmdline",
          option = {
            ignore_cmds = { "Man", "!" },
          },
        },
      }),
    })

    cmp.setup({
      snippet = {
        expand = function(args)
          require("luasnip").lsp_expand(args.body)
        end,
      },
      sources = {
        { name = "nvim_lsp" },
        { name = "luasnip", keyword_length = 2 },
        { name = "buffer",  keyword_length = 3 },
        { name = "path" },
      },
      mapping = cmp.mapping.preset.insert({
        ["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
        ["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
        ["<C-f>"] = cmp_action.luasnip_jump_forward(),
        ["<C-b>"] = cmp_action.luasnip_jump_backward(),
        ['<Tab>'] = cmp_action.luasnip_supertab(),
        ['<S-Tab>'] = cmp_action.luasnip_shift_supertab(),
        ["<C-k>"] = cmp.mapping.select_prev_item(),
        ["<C-j>"] = cmp.mapping.select_next_item(),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
        ['<Enter>'] = cmp.mapping.confirm({ select = true }),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-u>'] = cmp.mapping.scroll_docs(-4),
        ['<C-d>'] = cmp.mapping.scroll_docs(4),
      }),
      window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
      },
      experimental = {
        ghost_text = true,
      },
    })

    local npairs = require("nvim-autopairs")

    npairs.setup({
      disable_filetype = { "TelescopePrompt", "spectre_panel" },
    })

    local cmp_autopairs = require("nvim-autopairs.completion.cmp")
    cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done({}))

    local autotag = require("nvim-ts-autotag")

    autotag.setup()
  end,
}
