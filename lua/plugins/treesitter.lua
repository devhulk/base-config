return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    vim.filetype.add({ extension = { templ = "templ" } })
    config.setup({
      ensure_installed = {"lua", "javascript", "go", "vimdoc", "templ"},
      highlight = { enable = true },
      indent = {enable = true},
    })
  end
}
