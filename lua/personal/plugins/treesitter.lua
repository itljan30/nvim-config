return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",

  dependencies = {
    "windwp/nvim-ts-autotag",
  },
  config = function()
    local treesitter = require("nvim-treesitter.configs")

    treesitter.setup({
      highlight = { enable = true },
      indent = { enable = true },
      ensure_installed = {
                "json",
                "c",
                "cpp",
                "csv",
                "cmake",
                "python",
                "powershell",
                "lua",
                "toml",
                "yaml",
                "vim",
                "gitignore",
                "rust",
                "markdown",
                "markdown_inline",
                "html",
                "css",
                "javascript",
                "typescript",
      },
    })
  end,
}
