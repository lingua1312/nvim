vim.api.nvim_create_user_command("MasonInstallAll", function()
  local packages = {
    "lua-language-server",
    "stylua",
    "typescript-language-server",
    "eslint-lsp",
    "bash-language-server",
    "dockerfile-language-server",
    "json-lsp",
    "yaml-language-server",
    "clangd",
  }

  vim.cmd("MasonInstall " .. table.concat(packages, " "))
end, {})
