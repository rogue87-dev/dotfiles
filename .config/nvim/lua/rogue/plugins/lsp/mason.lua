return { -- For installing LSPs, DAPs, formatters, linters
  "williamboman/mason.nvim",
  event = "BufReadPost",
  cmd = {
    "Mason",
  },
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    -- The one and only
    local mason = require("mason")
    -- For installing LSPs and DAPs
    local mason_lspconfig = require("mason-lspconfig")
    -- For installing formatters, linters ... etc
    local mason_tool_installer = require("mason-tool-installer")

    mason.setup({
      ui = {
        border = "rounded",
        width = 0.8,
        height = 0.8,
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    -- LSPs, DAPs
    mason_lspconfig.setup({
      ensure_installed = {
        -- Web
        "html",
        "cssls",
        "tsserver",
        "jsonls",
        "eslint",

        -- Generic
        "lua_ls",
        "bashls",
      },
      automatic_installation = true,
    })

    -- Formatters, Linters
    mason_tool_installer.setup({
      ensure_installed = {
        -- Fomratters
        "stylua",
        "prettierd",

        -- Linters
        "luacheck",
        "codespell",
        "eslint_d",
        "stylelint",

        -- Both
        "shellharden",
        "markdownlint",
      },
    })
  end,
}
