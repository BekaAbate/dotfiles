return {
  'williamboman/mason.nvim',
  dependencies = {
    'WhoIsSethDaniel/mason-tool-installer.nvim',
  },

  config = function()
    local mason = require 'mason'

    local mason_tool_installer = require 'mason-tool-installer'

    mason.setup {
      ui = {
        icons = {
          package_installed = '✓',
          package_pending = '➜',
          package_uninstalled = '✗',
        },
        keymaps = {
          toggle_package_expand = '<CR>',
          install_package = 'i',
          update_package = 'u',
          check_package_version = 'c',
          update_all_packages = 'U',
          check_outdated_packages = 'C',
          uninstall_package = 'x', -- This enables 'x' to work
          cancel_installation = '<C-c>',
          apply_language_filter = '<C-f>',
        },
      },
    }

    mason_tool_installer.setup {
      ensure_installed = {
        'prettier', -- prettier formatter
        'stylua', -- lua formatter
        'eslint_d',
        'html-lsp',
        'css-lsp',
        'emmet-language-server',
        'lua-language-server',
        'typescript-language-server',
        'tailwindcss-language-server',
        'intelephense',
        'prisma-language-server',
        -- 'gopls',
      },
    }
  end,
}
