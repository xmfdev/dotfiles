-- Harpoon
--
-- Navigation system meant to replace tabs.
return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope.nvim"
    },
    config = function()
        local harpoon = require("harpoon")
        harpoon.setup()

        local keymap = vim.keymap

        keymap.set("n", "<leader>fh", function()
            harpoon.ui:toggle_quick_menu(harpoon:list())
        end)

        keymap.set("n", "<leader>a", function() harpoon:list():add() end)

        keymap.set("n", "<leader>h", function() harpoon:list():select(1) end)
        keymap.set("n", "<leader>t", function() harpoon:list():select(2) end)
        keymap.set("n", "<leader>n", function() harpoon:list():select(3) end)
        keymap.set("n", "<leader>s", function() harpoon:list():select(4) end)

        keymap.set("n", "<leader>o", function() harpoon:list():prev() end)
        keymap.set("n", "<leader>p", function() harpoon:list():next() end)
    end
}
