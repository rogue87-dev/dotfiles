return {
  "ThePrimeagen/harpoon",
  dependencies = "nvim-lua/plenary.nvim",
  config = function()
    require("harpoon").setup({
      global_settings = {
        -- sets the marks upon calling `toggle` on the ui, instead of require `:w`.
        save_on_toggle = false,
        -- saves the harpoon file upon every change. disabling is unrecommended.
        save_on_change = true,
        -- sets harpoon to run the command immediately as it's passed to the terminal when calling `sendCommand`.
        enter_on_sendcmd = false,
        -- closes any tmux windows harpoon that harpoon creates when you close Neovim.
        tmux_autoclose_windows = false,
        -- filetypes that you want to prevent from adding to the harpoon list menu.
        excluded_filetypes = { "harpoon" },
        -- set marks specific to each git branch inside git repository
        mark_branch = true,
        -- enable tabline with harpoon marks
        tabline = false,
        tabline_prefix = "   ",
        tabline_suffix = "   ",
      },
    })
    local map = vim.keymap.set
    map("n", "hx", require("harpoon.mark").add_file, { desc = "Add file to harpoon" })
    map("n", "hn", require("harpoon.ui").nav_next, { desc= "Navigate to next file in harpoon menu" })
    map("n", "hp", require("harpoon.ui").nav_prev, { desc = "Navigate to previous file in harpoon menu" })
    map("n", "[[hm]]", ":Telescope harpoon marks<CR>", {desc = "Open harpoon menu"})
  end,
}
