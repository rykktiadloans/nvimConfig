return {
	"williamboman/mason-lspconfig.nvim",
	priority = 4,
	config = function()
		require("mason-lspconfig").setup {
			ensure_installed = { "lua_ls", "rust_analyzer", "bashls", "clangd", "cssls", "eslint", "html",
				"tsserver", "pyright", "volar" },
		}
		require("mason-lspconfig").setup_handlers {
			function(server_name)
				require("lspconfig")[server_name].setup {}
			end,
		}
	end
}
