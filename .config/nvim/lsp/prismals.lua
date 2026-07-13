return {
  default_config = {
    cmd = { 'prisma-language-server', '--stdio' },
    filetypes = { 'prisma' },
    root_dir = function(fname)
      return require('lspconfig').util.root_pattern 'prisma.schema'(fname) or require('lspconfig').util.root_pattern 'package.json'(fname)
    end,
    settings = {},
  },
}
