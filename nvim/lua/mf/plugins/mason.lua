-- Mason
--
-- LSP package manager.
return {
    "williamboman/mason-lspconfig.nvim",
    opts = {
        ensure_installed = {
            "lua_ls",
            "clangd",
            "html",
            "cssls",
            "ts_ls"
        }
    },
    dependencies = {
        {
            "williamboman/mason.nvim",
            opts = {
                ui = {
                    icons = {
                        package_installed = "✓",
                        package_pending = "➜",
                        package_uninstalled = "✗"
                    }
                }
            },
        },
        "neovim/nvim-lspconfig"
    },
}

