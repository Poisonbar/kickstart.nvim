do
  require('conform').setup {
    notify_on_error = true,
    format_on_save = nil,
    formatters_by_ft = {
      lua = { 'stylua' },
      python = { 'ruff_fix', 'ruff_format' },
      cpp = { 'clang-format' },
      bash = { 'shfmt' },
      -- tex = { "latexindent" },
      --
      -- You can use 'stop_after_first' to run the first available formatter from the list
      -- javascript = { "prettierd", "prettier", stop_after_first = true },
      -- javascriptreact = { "prettierd", "prettier", stop_after_first = true },
      -- json = { "jq", "prettierd", "prettier", stop_after_first = true },
    },
    formatters = {
      shfmt = {
        prepend_args = { '-i', '4' },
      },
    },
  }
end
