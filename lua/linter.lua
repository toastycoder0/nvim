local eslint = {"eslint_d"}

require("lint").linters_by_ft = {
  javascript = eslint,
  typescript = eslint,
  javascriptreact = eslint,
  typescriptreact = eslint
}

vim.api.nvim_create_autocmd({ "InsertLeave", "BufWritePost", "BufEnter" }, {
  callback = function()
    require("lint").try_lint()
  end,
})
