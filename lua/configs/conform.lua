local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    cs = { "csharpier" },
    -- css = { "prettier" },
    -- html = { "prettier" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 5000,
    lsp_fallback = true,
  },

  formatters = {
    csharpier = {
      command = vim.env.HOME .. "/.dotnet/tools/csharpier",
      args = { "--encoding", "utf-8" },
    },
  },
}

return options
