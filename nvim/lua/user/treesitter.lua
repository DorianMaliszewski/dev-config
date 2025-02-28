return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  init = function()
    local configs = require("nvim-treesitter.configs")
    configs.setup({
      ensure_installed = { 'tsx', 'typescript', 'html', 'go', 'rust', 'css', 'lua', 'regex', 'scss' },
      auto_install = true,
      highlight = {
        enable = true,   -- false will disable the whole extension
      },
      autopairs = {
        enable = true,
      },
      autotag = {
        enabled = true,
      },
    })
  end

}
