local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system({"git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim",
                                  install_path})
    print("Installing packer close and reopen Neovim...")
    vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

-- Have packer use a popup window
packer.init({
    display = {
        open_fn = function()
            return require("packer.util").float({
                border = "rounded"
            })
        end
    }
})

-- Install your plugins here
return packer.startup(function(use)
    use("wbthomason/packer.nvim") -- Have packer manage itself
    use 'tpope/vim-commentary'
    use 'glepnir/galaxyline.nvim'
    use 'preservim/tagbar'
    use 'nvim-telescope/telescope.nvim'
    use 'matze/vim-move'
    use 'tpope/vim-surround'
    use 'Xuyuanp/scrollbar.nvim'

    use {
        use 'rafi/awesome-vim-colorschemes',
        vim.cmd 'colorscheme abstract'
    }
    
    use { --  Treesitter
        'nvim-treesitter/nvim-treesitter',
        run = function()
		local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
	end,

        --require('nvim-treesitter.configs').setup {
        --    ensure_installed = {"c", "cpp", "c_sharp", "css", "git_config", "gitignore", "html", "javascript", "json",
        --                        "json5", "lua", "php", "python", "scss", "vim", "markdown", "bash"},
        --    highlight = {
        --        enable = true
        --    }
        --}
    }

    use {
	    'm4xshen/autoclose.nvim', 
	    require("autoclose").setup({
		    keys = { 
			    ["$"] = { escape = true, close = true, pair = "$$", disabled_filetypes = {'text', 'markdown'} }
		    },
	    })
	}


    use {
        "ellisonleao/glow.nvim",
        config = function()
            require("glow").setup()
        end
    }

    use { -- Neotree
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        requires = {"nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim", "3rd/image.nvim" -- Optional image support in preview window: See `# Preview Mode` for more information
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
        requires = {
            'nvim-tree/nvim-web-devicons',
            opt = true
        }
    }

    use { -- Gitsigns
        'lewis6991/gitsigns.nvim',
        requires = {'nvim-lua/plenary.nvim'}
    }

    -- use {   --Neovim Dashboard
    --  'nvimdev/dashboard-nvim',
    --  event = 'VimEnter',
    --  config = function()
    --      require('dashboard').setup {
    --          --config
    --      }
    --  end,
    --  requires = {'nvim-tree/nvim-web-devicons'}
    -- }

    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)
