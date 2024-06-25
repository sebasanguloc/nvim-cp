return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "folke/neodev.nvim",
    },
    config = function()
        require("neodev").setup()
        require("lspconfig").lua_ls.setup({
            settings = {
                Lua = {
                    telemetry = { enable = false },
                    workspace = { checkThirdParty = false },
                }
            }
        })
        require("lspconfig").clangd.setup({
            cmd = {"clangd", "--background-index"},
            filetypes = {"cpp"},
        })
    end
}
