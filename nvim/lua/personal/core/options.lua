vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

opt.relativenumber = true
opt.number = true
opt.scrolloff = 8
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

opt.wrap = false

opt.hlsearch = false
opt.incsearch = true

opt.smartcase = true

opt.cursorline = true

opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

opt.backspace = "indent,eol,start"

opt.colorcolumn = "120"

opt.splitright = true
opt.splitbelow = true

vim.api.nvim_exec([[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank { higroup="IncSearch", timeout=200 }
  augroup end
]], false)

