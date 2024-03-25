return {
	"nvimtools/none-ls.nvim",
	event = "BufReadPost",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},

	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			debug = false,
			sources = {
				-- Code Actions
				null_ls.builtins.code_actions.gitsigns,

				-- Completion
				null_ls.builtins.completion.luasnip,
				null_ls.builtins.completion.tags,

				-- Formatting
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettierd,
				null_ls.builtins.formatting.stylelint,

				-- Diagnostics
				null_ls.builtins.diagnostics.codespell,
				null_ls.builtins.diagnostics.markdownlint,

				-- Hover
				null_ls.builtins.hover.dictionary,
				null_ls.builtins.hover.printenv,
			},
		})
		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
