return {
  'stevearc/conform.nvim',
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  keys = {
    {
      -- Customize or remove this keymap to your liking
      "<leader>cf",
      function()
        require("conform").format({ async = true })
      end,
      mode = "",
      desc = "Format buffer",
    },
  },
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      rust = { "rustfmt", lsp_format = "fallback" },
      javascript = { "biome", "prettierd", "prettier", "eslint_d", stop_after_first = true },
      typescript = { "biome", "prettierd", "prettier", "eslint_d", stop_after_first = true },
      javascriptreact = { "biome", "prettierd", "prettier", "eslint_d", stop_after_first = true },
      typescriptreact = { "biome", "prettierd", "prettier", "eslint_d", stop_after_first = true },
    },
    -- Set default options
    default_format_opts = {
      lsp_format = "fallback",
    },
  }
}
