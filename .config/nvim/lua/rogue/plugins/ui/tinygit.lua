return {
	"chrisgrieser/nvim-tinygit",
	ft = { "gitrebase", "gitcommit" }, -- so ftplugins are loaded
	dependencies = {
		"stevearc/dressing.nvim",
		"nvim-telescope/telescope.nvim", -- either telescope or fzf-lua
		-- "ibhagwan/fzf-lua",
		"rcarriga/nvim-notify", -- optional, but will lack some features without it
	},
	config = function()
		require("tinygit").smartCommit({ pushIfClean = false })
		vim.keymap.set("n", "ga", "<cmd>Gitsigns add_hunk<CR>") -- gitsigns.nvim
		vim.keymap.set("n", "gc", function() require("tinygit").smartCommit() end)
		vim.keymap.set("n", "gp", function() require("tinygit").push() end)
	end,
}
