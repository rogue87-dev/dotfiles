return {
  "navarasu/onedark.nvim",
	lazy = false,
	priority = 1000,
	opts = {},
	config = function()
    require("onedark").setup({
      style = "warmer"
    })
		-- vim.cmd("colorscheme onedark")
	end,
}
