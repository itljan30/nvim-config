local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- Clone lazy.nvim if it's not already installed
if not vim.loop.fs_stat(lazypath) then
    print("Cloning Lazy.nvim...")
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end

-- Prepend the `lazy.nvim` to runtime path
vim.opt.rtp:prepend(lazypath)

-- Set up Lazy.nvim with plugin imports
require("lazy").setup({
    { import = "personal.plugins" },
    { import = "personal.plugins.lsp" },
}, {
    checker = {
        enabled = true,
        notify = false,
    },
    change_detection = {
        notify = false,
    },
})

