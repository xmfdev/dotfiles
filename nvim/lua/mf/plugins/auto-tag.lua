-- Auto-tag
--
-- Automatically close HTML tags.
return {
    "windwp/nvim-ts-autotag",
    event = "VeryLazy",
    config = function()
        require("nvim-ts-autotag").setup()
    end,
}
