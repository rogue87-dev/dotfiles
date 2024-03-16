return {
  "akinsho/toggleterm.nvim",
  config = function()
    require("toggleterm").setup({
      shade_filetypes = {"neo-tree"},
      float_opts = {
        border = "curved",
      }
    })
    vim.keymap.set("n","<leader>tt","<cmd>ToggleTerm<CR>", { noremap = true, silent = true })
  end,
}
