require("nvchad.configs.lspconfig").defaults()

vim.diagnostic.config {
  virtual_text = false,
  underline = true,
  signs = true,
  float = {
    border = "single",
    focusable = false,
  },
}

vim.o.updatetime = 250

vim.cmd [[
  autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, { focus = false })
]]

local servers = {
  "lua_ls",
  "html",
  "cssls",
  "gopls",
  "rust-analyzer",
  "ts_ls",
  "dockerls",
  "yamlls",
  "jsonls",
  "pyright",
  "sqls",
}
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
