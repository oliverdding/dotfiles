local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    go = { "goimports-reviser", "gofumpt" },
    json = { "fixjson" },
    yaml = { "yamlfmt" },
    cpp = { "clang-format" },
    sh = { "shfmt" },
    sql = { "sqlfluff" },
    rust = { "rustfmt" },
  },

  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

require("conform").setup(options)

-- formatter with customed options
require("conform").formatters.rustfmt = {
  options = {
    default_edition = "2021",
    -- TODO: add more configuration
  },
}
