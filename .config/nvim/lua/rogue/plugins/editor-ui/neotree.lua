return {
	"nvim-neo-tree/neo-tree.nvim",
	keys = {
		{ "<leader>ft", "<cmd>Neotree toggle<CR>", desc = "Toggle Neotree" },
	},
	dependencies = {
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
		"nvim-tree/nvim-web-devicons",
	},
	init = function()
		vim.fn.sign_define("DiagnosticSignError", { text = " ", texthl = "DiagnosticSignError" })
		vim.fn.sign_define("DiagnosticSignWarn", { text = " ", texthl = "DiagnosticSignWarn" })
		vim.fn.sign_define("DiagnosticSignInfo", { text = " ", texthl = "DiagnosticSignInfo" })
		vim.fn.sign_define("DiagnosticSignHint", { text = "󰌵", texthl = "DiagnosticSignHint" })
	end,
	opts = {
		filesystem = {
			follow_current_file = {
				enabled = true,
			},
		},
	},
}
