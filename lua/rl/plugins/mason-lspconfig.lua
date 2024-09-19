return {
    "williamboman/mason-lspconfig.nvim",
    priority = 4,
    config = function()
        require("mason-lspconfig").setup {
            ensure_installed = { "lua_ls", "bashls",
                "pyright", "volar"},
        }
   end
}
