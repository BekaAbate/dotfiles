return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  main = 'nvim-treesitter.configs',
  opts = {
    ensure_installed = {
      'lua', 'vim', 'vimdoc',
      'javascript', 'typescript', 'tsx',
      'html', 'css',
      'json', 'markdown', 'markdown_inline',
      'bash', 'regex',
      'go', 'sql',
      'dockerfile', 'toml', 'gitignore',
      'graphql', 'prisma',
    },
    auto_install = true,
    highlight = { enable = true },
    indent = { enable = true, disable = { 'ruby' } },
  },
}
