return {
	"tpope/vim-commentary",
	config = function()
		vim.api.nvim_set_keymap("n", "c", ":Commentary<CR>", { noremap = true, silent = true })
	end,
}
