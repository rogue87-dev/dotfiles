-- Leader Key
vim.g.mapleader = ''

-- Install Packer if not already installed
local install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) > 1 then
    vim.fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd 'packadd packer.nvim'
end

-- Plugins
require('packer').startup(function()
    use 'vim-airline/vim-airline'
	use 'vim-airline/vim-airline-themes'
    use 'tpope/vim-commentary'
	use 'nvim-treesitter/nvim-treesitter'
    use 'glepnir/galaxyline.nvim'
    use 'rafi/awesome-vim-colorschemes'
    use 'preservim/tagbar'
    use 'nvim-telescope/telescope.nvim'
    use 'matze/vim-move'
    use 'tpope/vim-surround'
    use 'Xuyuanp/scrollbar.nvim'
    -- use 'numToStr/FTerm.nvim'
    
    use {
        'm4xshen/autoclose.nvim',
        require("autoclose").setup({
            keys = {
                ["$"] = { escape = true, close = true, pair = "$$", disabled_filetypes = {} },
            },
            disabled_filetypes = { 'text','markdown' },
        })
    }

    use {"ellisonleao/glow.nvim", config = function() require("glow").setup(

	    {
            glow_path = "", -- will be filled automatically with your glow bin in $PATH, if any
            install_path = "~/.local/bin", -- default path for installing glow binary
            border = "shadow", -- floating window border config
            style = "dark", -- filled automatically with your current editor background, you can override using glow json style
            pager = false,
            width = 80,
            height = 100,
            width_ratio = 0.7, -- maximum width of the Glow window compared to the nvim window size (overrides `width`)
            height_ratio = 0.7,
        }
        ) end}

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

    use {   --Gitsigns
        'lewis6991/gitsigns.nvim',
        requires = {
            'nvim-lua/plenary.nvim'
        }
    }

    use {   --coc LSP
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

--  Treesitter
require('nvim-treesitter.configs').setup {
    ensure_installed ={
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

--  Other Plugins
vim.cmd 'colorscheme onedark'

-- Options
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.timeoutlen =0 
vim.o.number = true
vim.o.expandtab = true
vim.o.insearch = true
vim.o.smartindent = true
vim.o.clipboard = "unnamedplus"

-- Key Mappings
vim.api.nvim_set_keymap('n', 'c', ':Commentary<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-b>', ':Neotree toggle<CR>', { noremap = true, silent = true})