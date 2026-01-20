return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",

    dependencies = {"windwp/nvim-ts-autotag"},

    config = function()
        local treesitter = require("nvim-treesitter")

        local langs = {
                "json", "c", "cpp", "csv", "cmake", "python", 
                "lua", "toml", "yaml", "vim", "rust", "markdown", 
                "markdown_inline", "html", "css", "javascript", "typescript",
        }

        treesitter.setup({
            highlight = { enable = true },
            indent = { enable = true },
            ensure_installed = langs,

            vim.api.nvim_create_autocmd('FileType', {
                pattern = langs,
                callback = function() vim.treesitter.start() end,
            })
        })
    end,
}

                -- highlight = { enable = true },
                -- indent = { enable = true },
                -- ensure_installed = {
-- return {
--   "nvim-treesitter/nvim-treesitter",
--   event = { "BufReadPre", "BufNewFile" },
--   build = ":TSUpdate",
--
--   dependencies = {
--     "windwp/nvim-ts-autotag",
--   },
--   config = function()
--     local treesitter = require("nvim-treesitter")
--
--     treesitter.setup({
--       highlight = { enable = true },
--       indent = { enable = true },
--       ensure_installed = {
--                 "json",
--                 "c",
--                 "cpp",
--                 "csv",
--                 "cmake",
--                 "python",
--                 "powershell",
--                 "lua",
--                 "toml",
--                 "yaml",
--                 "vim",
--                 "gitignore",
--                 "rust",
--                 "markdown",
--                 "markdown_inline",
--                 "html",
--                 "css",
--                 "javascript",
--                 "typescript",
--       },
--     })
--   end,
-- }
