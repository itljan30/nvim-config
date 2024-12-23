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

    -- -- Gruvbox
    -- "morhetz/gruvbox",
    -- name = "gruvbox",
    -- priority = 1000,
    -- config = function()
    --     vim.g.gruvbox_contrast_dark = 'soft' -- You can also try 'medium' or 'hard'
    --     vim.cmd.colorscheme("gruvbox")
    -- end

    -- -- Nord
    -- "shaunsingh/nord.nvim",
    -- name = "nord",
    -- priority = 1000,
    -- config = function()
    --     -- setup must be called before loading
    --     vim.cmd("colorscheme nord")
    -- end

    -- -- CATPUCCIN
    -- "catppuccin/nvim",
    -- name = "catppuccin",
    -- priority = 1000,
    -- config = function()
    --
    --     require("catppuccin").setup({
    --         flavour = "macchiato", -- latte, frappe, macchiato, mocha
    --     })
    --
    --     -- setup must be called before loading
    --     vim.cmd.colorscheme "catppuccin"
    --
    -- end,
}
