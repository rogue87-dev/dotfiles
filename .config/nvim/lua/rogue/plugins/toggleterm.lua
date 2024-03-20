return {
	"akinsho/toggleterm.nvim",
	keys = {
		{ "<C-`>", ":ToggleTerm<CR>", desc = "Toggle terminal float" },
	},
	opts = {
		open_mapping = [[<c-`>]],
		start_in_insert = false,
		shade_filetypes = { "neo-tree" },
		direction = "float",
		float_opts = {
			border = "curved",
		},
	},
	config = function(plugin, opts)
		require("toggleterm").setup(opts)
	end,
}
