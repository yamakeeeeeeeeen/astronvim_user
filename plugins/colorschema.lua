return {
  { "folke/tokyonight.nvim" },

  ["ellisonleao/gruvbox.nvim"] = {
    config = function()
      require("gruvbox").setup {
        contrast = "soft",
        transparent_mode = true,
        overrides = { StatusLine = { bg = "#282828" } }
      }
    end
  },

  { "sainnhe/gruvbox-material" },

  { "sainnhe/everforest" }
}
