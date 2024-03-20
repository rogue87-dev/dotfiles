return {
	"williamboman/mason.nvim",
  event = "BufReadPost",
  cmd = {
    "Mason"
  },
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")
		mason.setup({
			ui = {
				border = "rounded",
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
