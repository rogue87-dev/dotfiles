return {
  "akinsho/toggleterm.nvim",
  config = function()
    require("toggleterm").setup({
      shade_filetypes = {"neo-tree"},
      float_opts = {
        border = "curved",
      }
    })
    local map = vim.keymap.set
    map("n","<leader>tt","<cmd>ToggleTerm direction=float<CR>", { desc = "Show ToggleTerm", noremap = true, silent = true })
  end,
}
