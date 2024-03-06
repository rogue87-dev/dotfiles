return {
  "hrsh7th/nvim-cmp",
  -- enabled = true,
  -- event = "InsertEnter",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp", --source for lsp
    "hrsh7th/cmp-buffer", --source for text in buffer
    "hrsh7th/cmp-path",   --source for file system paths
    "hrsh7th/cmp-nvim-lsp-signature-help"
  },
  config = function()
    local cmp = require("cmp")
    require("luasnip.loaders.from_vscode").lazy_load()

    cmp.setup({
      snippet = {
        expand = function(args)
          require("luasnip").lsp_expand(args.body)
        end,
      },
      window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
      },
      mapping = cmp.mapping.preset.insert({
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-e>"] = cmp.mapping.abort(),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
      }),
      sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "luasnip" },
      }, {
        { name = "path" },
        { name = "buffer" },
        { name = "nvim_lsp_signature_help" }
      }),
    })
  end,
}
