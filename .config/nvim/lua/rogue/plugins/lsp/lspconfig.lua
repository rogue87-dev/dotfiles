return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
  },
  -- enabled = false,
  config = function()
    -- hacky way but whatever I guess
    require("lspconfig.ui.windows").default_options.border = "rounded"

    local lspconfig = require("lspconfig")
    local capabilities = require("cmp_nvim_lsp").default_capabilities()
    -- in case I wanted to add something to all servers
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
