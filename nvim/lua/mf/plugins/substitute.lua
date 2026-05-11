-- Substitute
--
-- Substitute with clipboard content.
return {
    "gbprod/substitute.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        local substitute = require("substitute")

        substitute.setup()

        local keymap = vim.keymap

        keymap.set("n", "s", substitute.operator)
        keymap.set("n", "ss", substitute.line)
        keymap.set("n", "S", substitute.eol)
        keymap.set("x", "s", substitute.visual)
    end
}

