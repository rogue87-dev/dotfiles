return {
  "nvim-treesitter/nvim-treesitter",
  enabled = true,
  build = function()
    require("nvim-treesitter.install").update({ with_sync = true })
  end,

  config = function()
    local configs = require("nvim-treesitter.configs")
    configs.setup({
      ensure_installed = {
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
        "bash",
      },
      auto_install = true,
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}
