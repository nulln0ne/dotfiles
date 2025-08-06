local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    go = { "goimports" },
    rust = { "ast-grep" },
    typescript = { "prettierd" },
    javascript = { "prettierd" },
    typescriptreact = { "prettierd" },
    javascriptreact = { "prettierd" },
    css = { "prettierd" },
    html = { "prettierd" },
    yaml = { "prettierd" },
    json = { "prettierd" },
    sql = { "sql-formatter" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
