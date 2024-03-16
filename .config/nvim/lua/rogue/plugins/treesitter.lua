return {
  "nvim-treesitter/nvim-treesitter",
  -- enabled = false,
  build = function()
    require("nvim-treesitter.install").update({ with_sync = true })
  end,

  config = function()
    local configs = require("nvim-treesitter.configs")
    configs.setup({
      ensure_installed = {
        "html",
        "css",
        "scss",
        "javascript",
        "markdown",
        "markdown_inline",
        "git_config",
        "json",
        "json5",
        "python",
        "lua",
        "vimdoc",
        "bash",
        "regex",
        "gitignore",
      },
      -- sync_install = true,
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}
