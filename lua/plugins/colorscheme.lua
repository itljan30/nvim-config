return {
    -- nightfox
    "EdenEast/nightfox.nvim",
    config = function()
        require("nightfox").setup({
            style = "nordfox",  -- Choose from 'nordfox', 'dayfox', 'dawnfox', etc.
        })
        vim.cmd.colorscheme("nordfox")
        vim.api.nvim_set_hl(0, "@type.builtin", {fg = "#ebcb8b"})
        vim.api.nvim_set_hl(0, "@variable", {fg = "#93ccdc"})

    end,
}
