return {
  "olimorris/onedarkpro.nvim",
  priority = 1000,
  config = function()
    require("onedarkpro").setup({
      -- colors = {
      --   selection = "#C376DA",
      -- },
      options = {
        transparency = true,
        selection = true,
      },
    })
  end,
}
