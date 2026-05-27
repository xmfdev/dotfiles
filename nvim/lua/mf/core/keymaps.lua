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

-- Switch between source/header files.
---@diagnostic disable: param-type-mismatch
keymap.set("n", "<leader>j", function()
    vim.lsp.buf_request(0, "textDocument/switchSourceHeader", { uri = vim.uri_from_bufnr(0) },
        function(err, result)
            if err then
                vim.notify("switchSourceHeader: " .. err.message, vim.log.levels.WARN)
            elseif result then
                vim.cmd("edit " .. vim.uri_to_fname(result))
            else
                vim.notify("No corresponding file found", vim.log.levels.WARN)
            end
        end
    )
end)
---@diagnostic enable: param-type-mismatch
