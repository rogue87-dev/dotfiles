return {
	"williamboman/mason.nvim",
	-- enabled = false,
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
	},
	config = function()
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")

		mason.setup({
			ui = {
        border = "single",
        width = 0.8,
        height = 0.8,
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
      auto_install = true,
			ensure_installed = {
				"lua_ls",
				"tsserver",
			},
		})
	end,
}
