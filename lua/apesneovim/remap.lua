vim.g.mapleader = " "                        -- space_bar is the mapping

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- to get the highlighted portion
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- up and down

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")


vim.keymap.set({ "n", "v" }, "<leader>y", [["*y]])
vim.keymap.set("n", "<leader>Y", [["*Y]])
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<leader>so", "<cmd>source<CR>")

vim.keymap.set("n", "<leader>e", "<cmd>LspRestart<CR>")

vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
