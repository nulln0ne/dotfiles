require("nvchad.configs.lspconfig").defaults()

local servers =
  { "lua_ls", "html", "cssls", "gopls", "rust-analyzer", "ts_ls", "dockerls", "yamlls", "jsonls", "pyright", "sqls" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
