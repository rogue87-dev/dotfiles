return {
	"m4xshen/autoclose.nvim",
	-- enabled = false,
	config = function()
		require("autoclose").setup({
			keys = {
				-- ["$"] = { escape = true, close = true, pair = "$$", disabled_filetypes = { "text", "markdown" } },
			},
		})
	end,
}
