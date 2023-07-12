local on_attach = require('plugins.configs.lspconfig').on_attach
local capabilities = require('plugins.configs.lspconfig').capabilities

local lspconfig = require "lspconfig"
local servers = { "html", "clangd", "rust_analyzer", "pylyzer"}

lspconfig.rust_analyzer.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"rust"},
  root_dir = lspconfig.util.root_pattern("Cargo.toml"),
})

lspconfig.pylyzer.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"python"},
  root_dir = lspconfig.util.root_pattern("requirements.txt")
})

lspconfig.clangd.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"c", "cpp", "objc", "objcpp", "proto"},
})

lspconfig.html.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})
