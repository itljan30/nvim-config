return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "WhoIsSethDaniel/mason-tool-installer.nvim" -- Ensure this is included
    },
    config = function()
        local mason = require("mason")
        local mason_lspconfig = require("mason-lspconfig")
        local mason_tool_installer = require("mason-tool-installer") -- Required for tool installer setup

        mason.setup()

        mason_lspconfig.setup({
            ensure_installed = {
                "clangd",
                "cmake",
                "marksman",
                "pyright",
                "rust_analyzer",
                "taplo",
                "hydra_lsp",
                "ts_ls",
            },
        })

        mason_tool_installer.setup({
            ensure_installed = {
                -- "cpplint",
                -- "pyright",
            },
        })
    end,
}
