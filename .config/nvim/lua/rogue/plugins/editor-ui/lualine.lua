return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    extensions = {
      "neo-tree"
    }
  },
	config = function(plugins, opts)
		require("lualine").setup(opts)
	end,
}
