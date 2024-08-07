require("conform").setup({
  formatters_by_ft = {
    lua = { "stylua" },
    -- Conform will run multiple formatters sequentially
    python = { "isort", "black" },
    -- You can customize some of the format options for the filetype (:help conform.format)
    rust = { "rustfmt", lsp_format = "fallback" },
    -- Conform will run the first available formatter
    javascript = { "biome", "prettierd", "prettier", "eslint_d", stop_after_first = true },
    typescript = { "biome", "prettierd", "prettier", "eslint_d", stop_after_first = true },
    javascriptreact = { "biome", "prettierd", "prettier", "eslint_d", stop_after_first = true },
    typescriptreact = { "biome", "prettierd", "prettier", "eslint_d", stop_after_first = true },
  },
})
