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
