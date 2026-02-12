return {
  cmd = { 'vscode-html-language-server', '--stdio' },
  filetypes = {
    'html',
    'templ',
    'typescriptreact',
    'javascriptreact',
    'css',
    'sass',
    'scss',
    'less',
    'php',
  },
  root_markers = { 'package.json', '.git' },
  settings = {},
  init_options = {
    provideFormatter = true,
    embeddedLanguages = { css = true, javascript = true, javascriptreact = true, typescriptreact = true },
    configurationSection = { 'html', 'css', 'javascript' },
  },
}
