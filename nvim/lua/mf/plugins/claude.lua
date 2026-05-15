-- Claude Code
--
-- Integrate Claude Code on neovim.
return {
    "coder/claudecode.nvim",
    dependencies = { "folke/snacks.nvim" },
    config = true,
    keys = {
        -- Toggle claude window.
        { "<leader>ui", "<cmd>ClaudeCode<cr>" },

        -- Focus claude window.
        { "<leader>uf", "<cmd>ClaudeCodeFocus<cr>" },

        -- Send current buffer to claude.
        { "<leader>ub", "<cmd>ClaudeCodeAdd %<cr>" },

        -- Send hunk to claude.
        { "<leader>us", "<cmd>ClaudeCodeSend<cr>",      mode = "v" },

        -- Accept diff.
        { "<leader>ua", "<cmd>ClaudeCodeDiffAccept<cr>" },

        -- Deny diff.
        { "<leader>ud", "<cmd>ClaudeCodeDiffDeny<cr>" },
    },
}
