-- Config for nvim-treesitter plugin
-- https://github.com/nvim-treesitter/nvim-treesitter

return {
  "nvim-treesitter/nvim-treesitter",
  name = "treesitter",
  build = ":TSUpdate",
  config = function () 
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      ensure_installed = { 
        "c", 
        "css", 
        "go", 
        "html", 
        "javascript", 
        "lua", 
        "markdown", 
        "markdown_inline", 
        "query",
        "rust", 
        "vim", 
        "vimdoc",
      },
      sync_install = false,
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },  
    })
  end
}
