return {
  cmd = {
    'vscode-css-language-server',
    '--stdio',
  },
  filetypes = {
    'css',
    'scss',
    'less',
  },
  init_options = {
    provideFormatter = true, -- Enable built-in formatting
  },
  root_markers = {
    'package.json',
    '.git',
  },
  settings = {
    css = {
      validate = true,
    },
    scss = {
      validate = true,
    },
    less = {
      validate = true,
    },
  },
  -- Critical for snippet support (required for full completions):
  capabilities = {
    textDocument = {
      completion = {
        completionItem = {
          snippetSupport = true,
        },
      },
    },
  },
}
