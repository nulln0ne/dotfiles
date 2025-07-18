require("nvchad.configs.lspconfig").defaults()

local servers = { "gopls", "rust-analyzer", "tsserver", "vscode-solidity-server" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
