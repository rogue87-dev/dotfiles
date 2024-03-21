return {
  -- For color highlighting
  {
    "NvChad/nvim-colorizer.lua",
    event = "BufReadPost",
    config = function()
      require("colorizer").setup()
    end,
  },
  -- For color picking
  {
    "ziontee113/color-picker.nvim",
    event = "BufReadPost",
    config = function()
      local opts = { noremap = true, silent = true }
      vim.keymap.set("n", "<C-c>", "<cmd>PickColor<cr>", opts)
      vim.keymap.set("i", "<C-c>", "<cmd>PickColorInsert<cr>", opts)
      require("color-picker").setup({
        ["icons"] = { "ﱢ", "" },
        ["border"] = "rounded", -- none | single | double | rounded | solid | shadow
        ["keymap"] = {
          ["U"] = "<Plug>ColorPickerSlider5Decrease",
          ["O"] = "<Plug>ColorPickerSlider5Increase",
        },
        ["background_highlight_group"] = "Normal",
        ["border_highlight_group"] = "FloatBorder",
        ["text_highlight_group"] = "Normal",
      })

      vim.cmd([[hi FloatBorder guibg=NONE]]) -- if you don't want weird border background colors around the popup.
    end,
  },
}
