return {
	"L3MON4D3/LuaSnip",
	version = "2.*",
	dependencies = {
		"saadparwaiz1/cmp_luasnip",
		"rafamadriz/friendly-snippets",
	},
	config = function()
		require("luasnip.loaders.from_vscode").lazy_load()
		require("luasnip.loaders.from_lua").load({ paths = "~/Code/Lua/luasnippets/love2dsnippets.nvim/" })
	end,
}
