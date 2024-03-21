return {
  "nvim-treesitter/nvim-treesitter",
  event = "BufEnter",
  build = function()
    require("nvim-treesitter.install").update({ with_sync = true })
  end,
  opts = {
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
    auto_install = true,
    highlight = { enable = true },
    indent = { enable = true },
  },
  config = function(plugins, opts)
    require("nvim-treesitter.configs").setup(opts)
  end,
}
