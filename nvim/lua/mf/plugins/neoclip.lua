-- Neoclip
--
-- Clipboard history for neovim.
return {
    "AckslD/nvim-neoclip.lua",
    dependencies = {
        { 'nvim-telescope/telescope.nvim' },
    },
    config = function()
        require('neoclip').setup({
            history = 1000,
            enable_persistent_history = true,
        })
    end,
}
