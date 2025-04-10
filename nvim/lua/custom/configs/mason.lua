lualocal mason = require("mason")

mason.setup({
  PATH = "append",
  env = {
    PATH = vim.env.PATH .. ":/usr/local/bin:/usr/local/lib/node_modules/npm/bin"
  }
})

