return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.5",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "folke/noice.nvim",
  },

  keys = {
    { "<leader>ff", "<cmd>Telescope find_files<cr>",  desc = "Fuzzy find files in cwd" },
    { "<leader>fr", "<cmd>Telescope oldfiles<cr>",    desc = "Fuzzy find recent files" },
    { "<leader>fs", "<cmd>Telescope live_grep<cr>",   desc = "Find string in cwd" },
    { "<leader>fc", "<cmd>Telescope grep_string<cr>", desc = "Find string under cursor in cwd" },
  },

  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
      defaults = {
      	mappings = {
      		i = {
      			["<C-k>"] = actions.move_selection_previous, --move to prev result
      			["<C-j>"] = actions.move_selection_next, --move to next result
      			["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
      		},
      	},
      },
    })

    telescope.load_extension("fzf")
    telescope.load_extension("noice")
    -- telescope.load_extension("harpoon")
  end,
}
