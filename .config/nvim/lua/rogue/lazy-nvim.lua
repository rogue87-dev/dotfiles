local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	spec = {
		{ import = "rogue.plugins" },

    { import = "rogue.plugins.ui.deps" },
    { import = "rogue.plugins.ui" },
		{ import = "rogue.plugins.ui.themes" },

		{ import = "rogue.plugins.lsp" },
		{ import = "rogue.plugins.autocomplete" },
		{ import = "rogue.plugins.autocomplete.snips" },

		{ import = "rogue.plugins.status" },
		{ import = "rogue.plugins.programs" },
	},
	dev = {
		-- path = {},
		-- patterns = {},
		-- fallback = false,
	},
	install = {
		missing = true,
		colorscheme = { "github_dark_default" },
	},
	ui = {
		size = {
			width = 0.8,
			height = 0.8,
		},
		wrap = true,
		border = "rounded",
	},
	checker = {
		enabled = true,
		notify = true,
	},
	change_detection = {
		notify = false,
	},
})
