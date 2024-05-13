local lsp_zero = require("lsp-zero")
local cmp = require("cmp")

lsp_zero.on_attach(function(client, bufnr)
  lsp_zero.default_keymaps({ buffer = bufnr })
end)

cmp.setup({
  sources = {
    { name = "nvim_lsp" },
    { name = "buffer" },
  },
  formatting = cmp_format,
  mapping = cmp.mapping.preset.insert({
    ["<C-p>"] = cmp.mapping(function()
      if cmp.visible() then
        cmp.select_prev_item({ behavior = "insert" })
      else
        cmp.complete()
      end
    end),
    ["<C-n>"] = cmp.mapping(function()
      if cmp.visible() then
        cmp.select_next_item({ behavior = "insert" })
      else
        cmp.complete()
      end
    end),
    ["<CR>"] = cmp.mapping.confirm({ select = true }),
  })
})

require("mason").setup({})

require("mason-lspconfig").setup({
  ensure_installed = { "tsserver", "rust_analyzer" },
  handlers = {
    function(server_name)
      require("lspconfig")[server_name].setup({})
    end,
  },
})
