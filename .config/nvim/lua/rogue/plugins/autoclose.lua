return {
	"m4xshen/autoclose.nvim",
	enabled = true,
	config = function()
		require("autoclose").setup({
			keys = {
				["$"] = { escape = false, close = true, pair = "$$", disabled_filetypes = { "text", "markdown" } },
			},
		})
	end,
}
