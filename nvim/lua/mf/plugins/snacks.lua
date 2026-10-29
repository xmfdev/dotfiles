-- Snacks
--
-- Collection of small QoL plugins.
return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
        bigfile = { enabled = true },
        input = { enabled = true },
        notifier = { enabled = true },
        quickfile = { enabled = true },
        scope = { enabled = true },
        words = { enabled = false },
        dashboard = { enabled = false },
        explorer = { enabled = false },
        indent = { enabled = false },
        picker = { enabled = false },
        scroll = { enabled = false },
        statuscolumn = { enabled = false },
    },
}
