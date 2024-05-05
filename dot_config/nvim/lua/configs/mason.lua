-- https://mason-registry.dev/registry/list
local options = {
  ensure_installed = {
    -- sql
    "sqlfluff",

    -- lua stuff
    "lua-language-server",
    "luacheck",
    "stylua",

    -- shell
    "bash-language-server",
    "shellcheck",
    "shfmt",

    -- c/cpp
    "clangd",
    "clang-format",
    "cpplint",

    -- cmake
    "cmakelang",
    "neocmakelsp",

    -- go
    "gopls",
    -- "delve",
    "gofumpt",
    "goimports-reviser",
    -- "gomodifytags",
    -- "impl",

    -- rust
    "rust-analyzer",
    "rustfmt",

    -- docker
    "dockerfile-language-server",
    "hadolint",
    "docker-compose-language-service",

    -- yaml
    "yaml-language-server",
    "yamlfmt",
    "yamllint",

    -- toml
    "taplo",

    --json
    "json-lsp",
    "jsonlint",
    "fixjson",
  },
}

return options
