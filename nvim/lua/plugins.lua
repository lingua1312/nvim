return {
  {
    "stevearc/conform.nvim",
    opts = require("configs.conform"),
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("configs.lspconfig")
    end,
  },
  {
    "goolord/alpha-nvim",
    event = "VimEnter",
    config = function()
      local alpha = require("alpha")
      local dashboard = require("alpha.themes.dashboard")

      dashboard.section.header.val = {
        " ▐ ▄ .▄▄ · ▪   ▄▄·  ▄ .▄▄▄▄▄▄▪   ▄▄ • ",
        "•█▌▐█▐█ ▀. ██ ▐█ ▌▪██▪▐█•██  ██ ▐█ ▀ ▪",
        "▐█▐▐▌▄▀▀▀█▄▐█·██ ▄▄██▀▐█ ▐█.▪▐█·▄█ ▀█▄",
        "██▐█▌▐█▄▪▐█▐█▌▐███▌██▌▐▀ ▐█▌·▐█▌▐█▄▪▐█",
        "▀▀ █▪ ▀▀▀▀ ▀▀▀·▀▀▀ ▀▀▀ · ▀▀▀ ▀▀▀·▀▀▀▀ ",
      }

      dashboard.section.footer.val = {
        "🧠  Welcome back, nsichtig",
        "📅  " .. os.date("%A, %B %d, %Y"),
        "💬  Your dotfiles fear this power.",
      }

      dashboard.section.center.val = {
        {
          icon = "󰱼  ",
          desc = "Find File",
          key = "f",
          action = "Telescope find_files",
        },
        {
          icon = "  ",
          desc = "File Explorer",
          key = "e",
          action = "NvimTreeToggle",
        },
        {
          icon = "  ",
          desc = "Run Francinette",
          key = "t",
          action = "TermExec cmd='cd ~/francinette && ./francinette ../ | tee result.log'",
        },
        {
          icon = "󰣇  ",
          desc = "Open Dotfiles",
          key = "p",
          action = "Telescope find_files cwd=~/.config/nvim",
        },
        {
          icon = "  ",
          desc = "Quit Neovim",
          key = "q",
          action = "qa",
        },
      }

      alpha.setup(dashboard.opts)
    end,
  },
}

