return {
	"lewis6991/gitsigns.nvim",
  event = "BufReadPost",
	config = function()
		require("gitsigns").setup()
		local gs = package.loaded.gitsigns
		local map = vim.keymap.set
		map("n", "<leader>hp", gs.preview_hunk)
		map("n", "<leader>hb", function() gs.blame_line({ full = true }) end)
	end,
}
