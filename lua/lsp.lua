local lsp_zero = require("lsp-zero")
local cmp = require("cmp")

lsp_zero.on_attach(function(_, bufnr)
  lsp_zero.default_keymaps({ buffer = bufnr })

  lsp_zero.buffer_autoformat()
end)

lsp_zero.set_sign_icons({
  error = '✘',
  warn = '▲',
  hint = '⚑',
  info = '»'
})

cmp.setup({
  sources = {
    { name = "nvim_lsp" },
    { name = "buffer" },
  },
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
  ensure_installed = { "tsserver" },
  handlers = {
    function(server_name)
      require("lspconfig")[server_name].setup({})
    end,
    tsserver = function()
      require('lspconfig').tsserver.setup({
        single_file_support = false,
        init_options = {
          preferences = {
            disableSuggestions = true,
          }
        }
      })
    end,
  },
})
