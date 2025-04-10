return {
  {
    "NvChad/ui",
    opts = {
      dashboard = {
        load_on_startup = true,
      },
    },
  },

{
    "goolord/alpha-nvim",
    lazy = false,
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = function()
      return require("alpha.themes.dashboard").config
    end,
  },
}
