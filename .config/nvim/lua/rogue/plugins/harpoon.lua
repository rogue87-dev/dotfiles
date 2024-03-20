return {
	"ThePrimeagen/harpoon",
	keys = {
		{ "hx", "<cmd>lua require('harpoon.mark').add_file",desc = "Add file to harpoon" },
		{ "hn", "<cmd>lua require('harpoon.ui').nav_next",  desc = "Navigate to next file in harpoon menu" },
		{ "hp", "<cmd>lua require('harpoon.ui').nav_prev",  desc = "Navigate to previous file in harpoon menu" },
		{ "hm", "<cmd>Telescope harpoon marks<CR>",         desc = "Open harpoon menu" },
	},
	dependencies = "nvim-lua/plenary.nvim",
	config = function()
		require("harpoon").setup({
			global_settings = {
				save_on_toggle = false,
				save_on_change = true,
				enter_on_sendcmd = false,
				tmux_autoclose_windows = false,
				excluded_filetypes = { "harpoon" },
				mark_branch = true,
				tabline = false,
				tabline_prefix = "   ",
				tabline_suffix = "   ",
			},
		})
	end,
}
