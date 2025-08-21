local options = {
  -- Explicitly define clangformat here to ensure it's known
  formatters = {
    clangformat = {
      command = "clang-format", -- This is the actual command
      args = { "--assume-filename", "$FILENAME", "--style=Google" },
      stdin = true,
      -- Add any other args you need, like --style=Google
      -- args = { "--assume-filename", "$FILENAME", "--stdin", "--style=Google" },
    },
  },

  formatters_by_ft = {
    lua = { "stylua" },
    cpp = { "clangformat" },
    python = { "isort", "black" },
    -- css = { "prettier" },
    -- html = { "prettier" },
  },

  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}

return options
