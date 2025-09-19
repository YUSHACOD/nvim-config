vim.opt.scrolloff = 19
vim.opt.termguicolors = true
vim.opt.cursorline = true
vim.opt.laststatus = 3
vim.cmd("set nocompatible")
vim.cmd("syntax on")
vim.cmd("set shortmess+=I")
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.opt.wrap = false
vim.cmd("set smartindent")
vim.cmd("set linebreak")
vim.cmd("set tabstop=4")
vim.cmd("set shiftwidth=4")
-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1
vim.cmd("set clipboard+=unnamedplus")
vim.o.winborder = "rounded"

vim.loader.enable()
