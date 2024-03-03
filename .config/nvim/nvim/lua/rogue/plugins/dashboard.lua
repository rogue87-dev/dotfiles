return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	config = function()
		require("dashboard").setup({
			theme = "hyper", --  theme is doom and hyper default is hyper
			disable_move = false, --  default is false disable move keymap for hyper
			shortcut_type = "letter", --  shorcut type 'letter' or 'number'
			change_to_vcs_root = false, -- default is false,for open file in hyper mru. it will change to the root of vcs

			config = {
				week_header = {
					enable = true,
				},
				shortcut = {
					{ desc = "󰊳 Update", group = "@property", action = "Lazy update", key = "u" },
					{
						icon = " ",
						icon_hl = "@variable",
						desc = "Files",
						group = "Label",
						action = "Telescope find_files",
						key = "f",
					},
					{
						desc = " Apps",
						group = "DiagnosticHint",
						action = "Telescope app",
						key = "a",
					},
					{
						desc = " dotfiles",
						group = "Number",
						action = "Telescope dotfiles",
						key = "d",
					},
				},
			},

			-- hide = {
			--   statusline = true    -- hide statusline default is true
			--   tabline = true       -- hide the tabline
			--   winbar = true        -- hide winbar
			-- },
			-- preview = {
			--   command       -- preview command
			--   file_path     -- preview file path
			--   file_height   -- preview file height
			--   file_width    -- preview file width
			-- },
		})
	end,
	dependencies = { { "nvim-tree/nvim-web-devicons" } },
}
