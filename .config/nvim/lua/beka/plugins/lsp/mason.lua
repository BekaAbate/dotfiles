return {
  'williamboman/mason.nvim',
  dependencies = { 'WhoIsSethDaniel/mason-tool-installer.nvim' },
  config = function()
    require('mason').setup {
      ui = {
        icons = {
          package_installed = '✓',
          package_pending = '➜',
          package_uninstalled = '✗',
        },
      },
    }

    require('mason-tool-installer').setup {
      ensure_installed = {
        -- formatters
        'prettier',
        'stylua',
        -- linters
        'eslint_d',
        -- LSP servers
        'html-lsp',
        'css-lsp',
        'emmet-language-server',
        'lua-language-server',
        'typescript-language-server',
        'tailwindcss-language-server',
        'intelephense',
        'prisma-language-server',
      },
    }
  end,
}
