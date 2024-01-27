-- Leader Key
vim.g.mapleader = " "

-- Key Mappings
vim.api.nvim_set_keymap("n", "<C-b>", ":Neotree toggle<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "c", ":Commentary<CR>", { noremap = true, silent = true })
