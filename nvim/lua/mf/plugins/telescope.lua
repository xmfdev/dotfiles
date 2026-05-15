-- Telescope
--
-- Fuzzy-finding goodness.
return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "folke/todo-comments.nvim",
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" }
    },
    config = function()
        local telescope = require("telescope")
        local actions = require("telescope.actions")

        telescope.setup({
            defaults = {
                layout_config = {
                    prompt_position = "top",
                },
                sorting_strategy = "ascending",
                path_display = { "smart" },
                mappings = {
                    i = {
                        ["<C-k>"] = actions.move_selection_previous,
                        ["<C-j>"] = actions.move_selection_next,
                        ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist
                    },
                },
            },
        })

        telescope.load_extension("fzf")

        local keymap = vim.keymap

        -- find_files: Fuzzy find files in cwd.
        -- oldfiles: Fuzzy find recent files.
        -- live_grep: Find string in cwd.
        -- grep_string: Find string under cursor in cwd.
        -- TodoTelescope: Find TODOs.
        -- neoclip: Look at yank history.
        keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
        keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>")
        keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")
        keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")
        keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>")
        keymap.set("n", "<leader>fy", "<cmd>Telescope neoclip<cr>")
    end
}
