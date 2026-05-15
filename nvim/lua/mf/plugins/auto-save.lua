-- Auto-save
--
-- Auto-save feature for nvim.
return {
    "okuuva/auto-save.nvim",
    version = '^1.0.0',
    cmd = "ASToggle",
    event = { "InsertLeave", "TextChanged" },
    opts = {
        immediate_save = { "InsertLeave", "TextChanged" },
        condition = function(buf)
            return vim.bo[buf].filetype ~= "harpoon"
        end,
    },
}
