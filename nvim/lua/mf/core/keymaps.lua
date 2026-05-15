local keymap = vim.keymap

-- Leader key.
vim.g.mapleader = " "

-- General.
keymap.set("n", "<leader>w", function()
    vim.lsp.buf.format()
    vim.cmd("wa")
end)

-- Searching.
keymap.set("n", "n", "nzz")
keymap.set("n", "N", "Nzz")
keymap.set("n", "<leader>nn", ":nohl<CR>")

-- Split control.
keymap.set("n", "<leader>sv", "<C-w>v")
keymap.set("n", "<leader>sh", "<C-w>s")
keymap.set("n", "<leader>se", "<C-w>=")
keymap.set("n", "<leader>sx", "<cmd>close<CR>")
keymap.set("n", "<leader>qa", "<cmd>wqall<CR>")

-- Split navigation.
keymap.set("n", "<C-h>", "<C-w>h")
keymap.set("n", "<C-l>", "<C-w>l")
keymap.set("n", "<C-j>", "<C-w>j")
keymap.set("n", "<C-k>", "<C-w>k")

-- Indenting.
keymap.set("n", ">", ">>")
keymap.set("n", "<", "<<")
