return {
  "olimorris/onedarkpro.nvim",
  priority = 1000,
  config = function()
    require("onedarkpro").setup({
      colors = {
        selection = "#6A5A3C",
      },
      options = {
        transparency = true,
        selection = true,
      },
    })
  end,
}
