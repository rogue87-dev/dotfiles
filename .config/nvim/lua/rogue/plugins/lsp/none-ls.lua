return {
	"nvimtools/none-ls.nvim",
	enabled = true,
	dependencies = {
		"nvim-lua/plenary.nvim",
	},

	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			debug = false,

			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.completion.luasnip,

				-- null_ls.builtins.diagnostics.eslint_d,
				null_ls.builtins.formatting.prettier,

				null_ls.builtins.completion.spell,
			},
		})
	end,
}
