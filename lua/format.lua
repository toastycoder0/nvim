require("lsp-format").setup {}

local prettier = {
    formatCommand = [[prettier --stdin-filepath ${INPUT} ${--tab-width:tab_width}]],
    formatStdin = true,
}

require("lspconfig").efm.setup {
    on_attach = require("lsp-format").on_attach,
    init_options = { documentFormatting = true },
    settings = {
        languages = {
            javascript = { prettier },
            typescript = { prettier },
            javascriptreact = { prettier },
            typescriptreact = { prettier },
            json = { prettier },
            css = { prettier },
        },
    },
}
