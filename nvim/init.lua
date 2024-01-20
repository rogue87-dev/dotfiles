require("plugins")

-- Leader Key
vim.g.mapleader = ''

-- Options
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.number = true
vim.o.expandtab = true
vim.o.insearch = true
vim.o.smartindent = true
vim.o.clipboard = "unnamedplus"

-- Key Mappings
vim.api.nvim_set_keymap('n', 'c', ':Commentary<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-b>', ':Neotree toggle<CR>', { noremap = true, silent = true})
