return {
  "neovim/nvim-lspconfig",
  event = "BufReadPost",
  keys = {
    { "K", vim.lsp.buf.hover, desc = "Lsp hover" },
    { "gd", vim.lsp.buf.definition, desc = "Go to definition" }
  },
  cmd = {
    "LspInfo",
    "LspInstall",
    "LspLog",
    "LspRestart",
    "LspStart",
    "LspStop",
    "LspUninstall"
  },
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
  },
  config = function()
    -- hacky way but whatever I guess
    require("lspconfig.ui.windows").default_options.border = "rounded"

    local lspconfig = require("lspconfig")
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    local servers = { "lua_ls", "tsserver", "html", "cssls", "bashls" }
    for _, server in ipairs(servers) do
      lspconfig[server].setup({
        capabilities = capabilities,
      })
    end

    local map = vim.keymap.set
    map("n", "K", vim.lsp.buf.hover, {})
		map("n", "gd", vim.lsp.buf.definition, {})
		map({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
  end,
}
