return {
	"wakatime/vim-wakatime",
	lazy = false,
	setup = function()
		vim.cmd([[packadd wakatime/vim-wakatime]])
	end,
}

-- :WakaTimeApiKey - change the api key saved in your ~/.wakatime.cfg
-- :WakaTimeDebugEnable - enable debug mode (may slow down Vim so disable when finished debugging)
-- :WakaTimeDebugDisable - disable debug mode
-- :WakaTimeScreenRedrawEnable - enable screen redraw to prevent artifacts (only for Vim < 8.0)
-- :WakaTimeScreenRedrawEnableAuto - redraw screen when plugin takes too long (only for Vim < 8.0)
-- :WakaTimeScreenRedrawDisable - disable screen redraw
-- :WakaTimeToday - echo your total coding activity for Today
