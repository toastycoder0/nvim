return {
  "Mofiqul/dracula.nvim",
  lasy = false,
  config = function()
    local dracula = require("dracula")
    dracula.setup({
      transparent_bg = true,
    })
    vim.cmd([[colorscheme dracula]])
  end,
}
