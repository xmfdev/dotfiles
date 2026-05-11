-- Auto-session
--
-- Save/restore working sessions.
return {
    "rmagatti/auto-session",
    config = function()
        local auto_session = require("auto-session")

        auto_session.setup({
            auto_restore_enabled = false,
            auto_session_suppress_dirs = { "~/", "~/Downloads", "~/Documents", "~/Desktop/" },
        })

        local keymap = vim.keymap

        keymap.set("n", "<leader>ws", "<cmd>AutoSession save<CR>")
        keymap.set("n", "<leader>wr", "<cmd>AutoSession restore<CR>")
    end
}

