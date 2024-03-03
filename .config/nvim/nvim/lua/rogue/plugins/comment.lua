return {
	"tpope/vim-commentary",
	enabled = true,
	config = function()
		vim.api.nvim_set_keymap("n", "c", ":Commentary<CR>", { noremap = true, silent = true })
	end,
}
