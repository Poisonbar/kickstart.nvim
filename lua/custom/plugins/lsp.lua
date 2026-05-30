local servers = {
  clangd = {
    cmd = {
      'clangd',
      '--background-index',
      '--clang-tidy',
      '--completion-style=detailed',
      '--header-insertion=iwyu',
      '--cross-file-rename',
    },
    filetypes = { 'c', 'cpp', 'objc', 'objcpp' },
    root_dir = vim.fs.root(0, {'compile_commands.json', 'compile_flags.txt', '.git'}),
  },
  pyright = {
    root_dir = vim.fs.root(0, { 'pyproject.toml', '.git'}),
    filetypes = { 'python' },
    settings = {
      python = {
        analysis = {
          autoSearchPaths = true,
          diagnosticMode = 'workspace',
          useLibraryCodeForTypes = true,
        },
      },
    },
  },
}

return servers



-- local s = {
--   bashls = {
--     filetypes = { 'sh', 'bash' },
--   },
--   ts_ls = {
--     root_dir = vim.fs.root(0, { 'package.json', 'tsconfig.json', '.git' }),
--     filetypes = { 'javascript', 'javascriptreact', 'typescript', 'typescriptreact' },
--     -- For a better TS experience, see: https://github.com/pmizio/typescript-tools.nvim
--     settings = {
--       -- tsserver = { ... }
--     },
--   },
--   cssls = {
--     root_dir = vim.fs.root(0, { '.git' }),
--     filetypes = { 'css', 'scss', 'less' },
--     settings = {
--       css = { validate = true },
--       scss = { validate = true },
--       less = { validate = true },
--     },
--   },
--   html = {
--     root_dir = vim.fs.root(0, { '.git' }),
--     filetypes = { 'html' },
--     settings = {
--       html = { format = { wrapLineLength = 120 } },
--     },
--   },
--
--   gopls = {
--     -- cmd = { "gopls" },
--     filetypes = { 'go', 'gomod', 'gowork', 'gotmpl' },
--     -- capabilities = {},
--     settings = {
--       gopls = {
--         analyses = { unusedparams = true },
--         staticcheck = true,
--       },
--     },
--   },
--
--   rust_analyzer = {
--     filetypes = { 'rust' },
--     settings = {
--       ['rust-analyzer'] = {
--         cargo = { allFeatures = true },
--         checkOnSave = { command = 'clippy' },
--       },
--     },
--   },
--   -- ... etc. See `:help lspconfig-all` for a list of all the pre-configured LSPs
--   --
--   -- Some languages (like typescript) have entire language plugins that can be useful:
--   -- https://github.com/pmizio/typescript-tools.nvim
-- }
