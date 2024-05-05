-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = {
  "lua_ls",
  "bashls",
  "gopls",
  "rust_analyzer",
  "jsonls",
  "yamlls",
  "pylyzer",
  "dockerls",
  "docker_compose_language_service",
  "cssls",
  "helm_ls",
  "neocmake",
  "taplo",
}

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end

-- lsps with customed config
-- TODO: adjust clangd options
lspconfig["clangd"].setup {
  on_attach = on_attach,
  cmd = {
    "clangd",
    "--compile-commands-dir=build",
    "--background-index",
    "-j=8",
    "--enable-config",
    "--clang-tidy",
    "--all-scopes-completion",
    "--completion-style=detailed",
    "--function-arg-placeholders",
    "--header-insertion=iwyu",
    "--pch-storage=memory",
  },
  capabilities = capabilities,
}

lspconfig["docker_compose_language_service"].setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {
    "yaml",
    "yml",
  },
  root_dir = lspconfig.util.root_pattern("docker-compose.yaml", "docker-compose.yml", "compose.yaml", "compose.yml"),
}

-- TODO: add gopls, rust-analyzer
