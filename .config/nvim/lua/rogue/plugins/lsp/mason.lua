return {
	"williamboman/mason.nvim",
	enabled = true,
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
	},
	config = function()
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")

		mason.setup({
			ui = {
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
