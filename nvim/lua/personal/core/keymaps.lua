vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>sv", "<C-w>v")
keymap.set("n", "<leader>sh", "<C-w>s")
keymap.set("n", "<leader>se", "<C-w>=")
keymap.set("n", "<leader>sc", "<cmd>close<CR>")

keymap.set("n", "<C-s>", "<cmd>wa<CR>")

-- keymap.set("n", "<leader>ee", "<cmd>Ex<CR>")
--
--
keymap.set('n', '<leader>tt', vim.cmd.UndotreeToggle)

keymap.set("n", "J", "mzJ`z")
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")
