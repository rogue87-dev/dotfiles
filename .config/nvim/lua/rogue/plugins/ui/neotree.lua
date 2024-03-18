return {
	"nvim-neo-tree/neo-tree.nvim",
	-- enabled = false,
	dependencies = {
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
	},
	config = function()
		-- Mappings
    local map = vim.keymap.set
		map("n", "<leader>ft", ":Neotree toggle<CR>", { desc = "Toggle Neotree", noremap = true, silent = true })

    -- Diagnostic Icons
		vim.fn.sign_define("DiagnosticSignError", { text = " ", texthl = "DiagnosticSignError" })
		vim.fn.sign_define("DiagnosticSignWarn", { text = " ", texthl = "DiagnosticSignWarn" })
		vim.fn.sign_define("DiagnosticSignInfo", { text = " ", texthl = "DiagnosticSignInfo" })
		vim.fn.sign_define("DiagnosticSignHint", { text = "󰌵", texthl = "DiagnosticSignHint" })

		require("neo-tree").setup({
      filesystem = {
        follow_current_file = {
          enabled = true
        }
      }
    })
	end,
}
