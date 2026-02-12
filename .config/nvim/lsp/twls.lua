return {
  cmd = { 'tailwindcss-language-server', '--stdio' },
  filetypes = {
    'html',
    'css',
    'less',
    'postcss',
    'sass',
    'scss',
    'javascript',
    'javascriptreact',
    'typescript',
    'typescriptreact',
  },
  settings = {
    tailwindCSS = {
      validate = true,
      lint = {
        cssConflict = 'warning',
        invalidApply = 'error',
        invalidScreen = 'error',
        invalidVariant = 'error',
        invalidConfigPath = 'error',
        invalidTailwindDirective = 'error',
        recommendedVariantOrder = 'warning',
      },
      classAttributes = {
        'class',
        'className',
        'classNames',
      },
      classFunctions = { 'cva', 'cx' },
    },
  },
  root_markers = { 'package.json', '.git', 'tailwind.config.js' },
}

-- includeLanguages = {
--   eelixir = 'html-eex',
--   elixir = 'phoenix-heex',
--   eruby = 'erb',
--   heex = 'phoenix-heex',
--   htmlangular = 'html',
--   templ = 'html',
-- },
