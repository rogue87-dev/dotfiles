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
vim.cmd 'colorscheme onedark'

-- Key Mappings
vim.api.nvim_set_keymap('n', 'c', ':Commentary<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-b>', ':Neotree toggle<CR>', { noremap = true, silent = true})

-- Install Packer if not already installed
local install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) > 1 then
    vim.fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd 'packadd packer.nvim'
end

-- Plugins
require('packer').startup(function()
    use 'tpope/vim-commentary'
    use 'glepnir/galaxyline.nvim'
    use 'rafi/awesome-vim-colorschemes'
    use 'preservim/tagbar'
    use 'nvim-telescope/telescope.nvim'
    use 'matze/vim-move'
    use 'tpope/vim-surround'
    use 'Xuyuanp/scrollbar.nvim'
    -- use 'numToStr/FTerm.nvim'

    use {	--  Treesitter
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
	    require('nvim-treesitter.configs').setup {
            ensure_installed =
            {
                "c",
                "cpp",
                "c_sharp",
                "css",
                "git_config",
                "gitignore",
                "html",
                "javascript",
                "json",
                "json5",
                "lua",
                "php",
                "python",
                "scss",
                "vim",
                "markdown",
                "bash"
            },
            highlight = {
                enable = true,
            },
        }
    }
    
    use {
        'm4xshen/autoclose.nvim',
        require("autoclose").setup({
            keys = {
                ["$"] = { escape = true, close = true, pair = "$$", disabled_filetypes = {} },
            },
            disabled_filetypes = { 'text','markdown' },
        })
    }

    use {"ellisonleao/glow.nvim", config = function() require("glow").setup() end}

    use {   --Neotree
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        requires = { 
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
            "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
        } 
    }

    use {
        'nvim-lualine/lualine.nvim',
        require('lualine').setup {
            options = {
                icons_enabled = true,
                theme = 'auto'
            }
        },
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    use {   --Gitsigns
        'lewis6991/gitsigns.nvim',
        requires = {
            'nvim-lua/plenary.nvim'
        }
    }

    use {   --coc
        'neoclide/coc.nvim',
        branch = 'release',
        config = function() vim.cmd('source $HOME/.config/nvim/coc-config.vim')
        end,
        run = ':call coc#util#install()'
    }

    --use {   --Neovim Dashboard
    --  'nvimdev/dashboard-nvim',
    --  event = 'VimEnter',
    --  config = function()
    --      require('dashboard').setup {
    --          --config
    --      }
    --  end,
    --  requires = {'nvim-tree/nvim-web-devicons'}
    --}

	--end of plugins
end)

---- Plugins Configs
