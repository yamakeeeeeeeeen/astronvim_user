return {
  { "folke/tokyonight.nvim" },

  { "marko-cerovac/material.nvim" },

  ["EdenEast/nightfox.nvim"] = {
    config = function()
      require("nightfox").setup {
        options = {
          styles = {
            comments = "italic",
            keywords = "bold",
            types = "italic,bold"
          }
        }
      }
    end
  },

  ["ellisonleao/gruvbox.nvim"] = {
    config = function()
      require("gruvbox").setup {
        contrast = "soft",
        transparent_mode = true,
        overrides = { StatusLine = { bg = "#282828" } }
      }
    end
  },

  { "luisiacc/gruvbox-baby" },

  { "sainnhe/gruvbox-material" },

  { "sainnhe/everforest" },

  { "savq/melange" }
}
