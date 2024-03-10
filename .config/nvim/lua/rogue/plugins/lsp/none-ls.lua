return {
	"nvimtools/none-ls.nvim",
	-- enabled = false,
	dependencies = {
		"nvim-lua/plenary.nvim",
	},

	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			debug = false,
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier,
				-- for some reason this causes an error
				-- null_ls.builtins.diagnostics.eslint_d
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
